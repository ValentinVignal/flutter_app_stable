import 'package:flutter_app_stable/router/auth_shell.dart';
import 'package:go_router/go_router.dart';

import 'auth_routes.dart' as auth_routes;
import 'unauth_routes.dart' as unauth_routes;

final router = GoRouter(
  initialLocation: '/login',
  routes: [
    ShellRoute(
      routes: auth_routes.$appRoutes,
      builder: (context, state, child) {
        return AuthShell(child: child);
      },
    ),
    ...unauth_routes.$appRoutes,
  ],
);
