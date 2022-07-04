import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/screens/screen_404.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  // TODO: Add a a listenable and give it to the parameter `refreshListenable`
  // to automatically log-in/out when the use logs in/out.
  redirect: (state) {
    // TODO: Add guards to check whether or not the user is logged in.
    // TODO: Add sub guards.
    return null;
  },
  routes: $appRoutes,

  errorBuilder: (context, state) => const Screen404(),
);
