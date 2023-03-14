import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) => ColoredBox(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(64.0),
          child: child,
        ),
      ),
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const Home(),
        )
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: context.pop,
              child: const Text('Pop'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.push('/'),
              child: const Text('Push'),
            ),
          ],
        ),
      ),
    );
  }
}
