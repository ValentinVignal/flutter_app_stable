import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/services/cache.dart';
import 'package:flutter_app_stable/widgets/left_pane.dart';
import 'package:flutter_app_stable/widgets/top_bar.dart';

Future<void> main() async {
  await Cache.init();
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
      builder: (context, child) {
        if (child == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Row(
          children: [
            const LeftPane(),
            Expanded(
              child: Column(
                children: [
                  const TopBar(),
                  Expanded(
                    child: child,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
