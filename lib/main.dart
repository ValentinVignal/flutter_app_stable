import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  routes: [
    ShellRoute(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => Home(
            location: state.location,
          ),
        )
      ],
      builder: (context, state, child) => Shell(
        child: child,
      ),
    )
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

class Shell extends StatelessWidget {
  const Shell({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).primaryColorDark,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: child,
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    required this.location,
    super.key,
  });

  final String location;

  String get newLocation {
    final uri = Uri.parse(location);
    final param = int.parse(uri.queryParameters['param'] ?? '0');
    return '/?param=${param + 1}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(location),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).pushReplacement(newLocation);
              },
              child: const Text('Push replacement'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go(newLocation);
              },
              child: const Text('Go'),
            ),
          ],
        ),
      ),
    );
  }
}
