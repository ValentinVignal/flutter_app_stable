import 'package:flutter_app_stable/router/routes.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/documents',
  routes: $appRoutes,
);
