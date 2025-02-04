import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stable/firebase_options.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(_backgroundHandler);

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
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig: router,
    );
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
