import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  initialLocation: '/a',
  routes: [
    ShellRoute(
      builder: (_, __, child) => Shell(child: child),
      routes: [
        GoRoute(
          path: '/a',
          builder: (_, __) => const Placeholder(),
        ),
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

class Shell extends StatelessWidget {
  const Shell({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          GoRouter.of(context).canPop().toString(),
        ),
        Expanded(
          child: child,
        ),
      ],
    );
  }
}
