import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'back_button.dart';
import 'router/auth_routes.dart';
import 'router/unauth_routes.dart';

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
          Row(
            children: [
              const GoRouterBackButton(),
              Expanded(
                child: Center(
                  child: Text(name),
                ),
              ),
            ],
          ),
          _Tile(route: const LoginRoute().location),
          _Tile(route: const SignUpRoute().location),
          _Tile(route: const FeedRoute().location),
          _Tile(route: const SettingsRoute().location),
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
