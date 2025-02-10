import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stable/firebase_options.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/theme/theme.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

const _channel = AndroidNotificationChannel(
  'high_importance_channel', // ID.
  'High Importance Notifications', // Title.
  description:
      'This channel is used for important notifications of Novade', // Description.
  importance: Importance.max,
);
final androidNotificationDetails = AndroidNotificationDetails(
  _channel.id,
  _channel.name,
  channelDescription: _channel.description,
  // Name of the icon as in `android/app/src/main/AndroidManifest.xml` ->
  // `com.google.firebase.messaging.default_notification_icon`.
  icon: 'ic_launcher',
  // Color of the icon as in `android/app/src/main/AndroidManifest.xml` ->
  // `com.google.firebase.messaging.default_notification_color` which
  // resolves to the color mentioned in
  // `android/app/src/main/res/values/colors.xml` file.
  color: const Color(0x012864ac),
  // Style to enforce displaying the entire text when expanding notification.
  styleInformation: const BigTextStyleInformation(''),
);

var _notificationId = 0;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
  );
  FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
  const initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  const initializationSettingsIOS = DarwinInitializationSettings();
  const initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
  );
  await FlutterLocalNotificationsPlugin().initialize(initializationSettings);
  runApp(const MyApp());
}

Future<void> _backgroundHandler(RemoteMessage message) async {
  print('Handling a background message ${message.messageId}');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig: router,
      builder: (context, child) {
        return FirebaseWrapperWidget(
          child: child!,
        );
      },
    );
  }
}

class FirebaseWrapperWidget extends StatefulWidget {
  const FirebaseWrapperWidget({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<FirebaseWrapperWidget> createState() => _FirebaseWrapperWidgetState();
}

class _FirebaseWrapperWidgetState extends State<FirebaseWrapperWidget> {
  // In this example, suppose that all messages contain a data field with the key 'type'.
  Future<void> setupInteractedMessage() async {
    // Get any messages which caused the application to open from
    // a terminated state.
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    // Also handle any interaction when the app is in the background via a
    // Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
        final notificationDetails = NotificationDetails(
          android: androidNotificationDetails,
        );

        await FlutterLocalNotificationsPlugin().show(
          _notificationId++,
          message.notification!.title ?? 'Fallback title',
          message.notification!.body ?? 'Fallback body',
          notificationDetails,
          payload: jsonEncode(message.data),
        );
      }
    });
  }

  void _handleMessage(RemoteMessage message) {
    if (message.data['type'] == 'chat') {
      // Do something to navigate to the correct screen.
    }
  }

  @override
  void initState() {
    super.initState();

    // Run code required to handle interacted messages in an async function
    // as initState() must not be async
    setupInteractedMessage();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _loggedIn = false;

  Future<void> _login() async {
    await FirebaseMessaging.instance.requestPermission(provisional: true);
    final fmcToken = await FirebaseMessaging.instance.getToken();
    if (fmcToken == null) {
      throw UnsupportedError('No token');
    }
    print('token');
    print(fmcToken);
  }

  Future<void> _logout() async {
    await FirebaseMessaging.instance.deleteToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Messaging Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _loggedIn = !_loggedIn;
              if (_loggedIn) {
                _login();
              } else {
                _logout();
              }
            });
          },
          child: Text(_loggedIn ? 'Logout' : 'Login'),
        ),
      ),
    );
  }
}
