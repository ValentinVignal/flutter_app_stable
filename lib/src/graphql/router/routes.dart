import 'package:flutter/material.dart';
import 'package:flutter_app_stable/src/screens/user_screen.dart';
import 'package:flutter_app_stable/src/screens/users_screen.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<UsersRoute>(
  path: '/users',
  routes: [TypedGoRoute<UserRoute>(path: ':id')],
)
class UsersRoute extends GoRouteData {
  const UsersRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const UsersScreen();
  }
}

class UserRoute extends GoRouteData {
  const UserRoute({
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UserScreen(
      id: id,
    );
  }
}
