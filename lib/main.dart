import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/services/auth_service.dart';
import 'package:flutter_app_stable/services/cache.dart';
import 'package:logging/logging.dart';

Future<void> main() async {
  Logger.root.level = Level.ALL;
  await Cache.init();
  await AuthService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      darkTheme: ThemeData.dark(),
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      title: 'Go router POC',
    );
  }
}
