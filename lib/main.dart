import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  initialLocation: '/out-shell-0',
  routes: [
    GoRoute(
      path: '/out-shell-0',
      builder: (context, state) {
        return const Screen(name: 'Out shell 0');
      },
    ),
    GoRoute(
      path: '/out-shell-1',
      builder: (context, state) {
        return const Screen(name: 'Out shell 1');
      },
    ),
    ShellRoute(
      routes: [
        GoRoute(
          path: '/in-shell-0',
          builder: (context, state) {
            return const Screen(name: 'In shell 0');
          },
        ),
        GoRoute(
          path: '/in-shell-1',
          builder: (context, state) {
            return const Screen(name: 'In shell 1');
          },
        ),
      ],
      builder: (context, state, child) {
        return Shell(child: child);
      },
    ),
  ],
);

class Shell extends StatelessWidget {
  const Shell({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Material(
          color: Colors.blue,
          child: Text('In Shell'),
        ),
        Expanded(
          child: child,
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(name),
          const _Tile(route: '/in-shell-0'),
          const _Tile(route: '/in-shell-1'),
          const _Tile(route: '/out-shell-0'),
          const _Tile(route: '/out-shell-1'),
        ],
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile({
    required this.route,
    Key? key,
  }) : super(key: key);

  final String route;

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return ListTile(
      title: Text(route),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: () {
              router.go(route);
            },
            child: const Text('go'),
          ),
          TextButton(
            onPressed: () {
              router.push(route);
            },
            child: const Text('push'),
          ),
          TextButton(
            onPressed: () {
              router.pushReplacement(route);
            },
            child: const Text('pushReplacement'),
          ),
        ],
      ),
    );
  }
}
