import 'package:flutter_app_stable/src/router/routes.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/users',
  routes: $appRoutes,
);
