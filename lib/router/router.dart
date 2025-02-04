import 'package:flutter_app_stable/router/routes.dart';
import 'package:flutter_app_stable/user_notifier.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  refreshListenable: userNotifier,
  routes: $appRoutes,
  redirect: (context, state) {
    final isLoggedIn = userNotifier.value != null;
    final isLoginPage = state.uri.pathSegments.firstOrNull == 'login';
    final fallback =
        isLoggedIn ? const HomeRoute().location : const LoginRoute().location;
    final isEmpty = state.uri.pathSegments.isEmpty;
    if (isLoggedIn == isLoginPage || isEmpty) {
      return fallback;
    }
    return null;
  },
);
