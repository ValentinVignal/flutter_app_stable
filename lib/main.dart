import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  initialLocation: '/a',
  routes: [
    GoRoute(
      path: '/a',
      builder: (_, __) => const MyWidget(path: '/a'),
    ),
    GoRoute(
      path: '/b',
      builder: (_, __) => const MyWidget(path: '/b'),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    required this.path,
    Key? key,
  }) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(path),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: () {
              context.push('/a');
            },
            child: const Text('/a'),
          ),
          TextButton(
            onPressed: () {
              context.push('/b');
            },
            child: const Text('/b'),
          ),
        ],
      )),
    );
  }
}
