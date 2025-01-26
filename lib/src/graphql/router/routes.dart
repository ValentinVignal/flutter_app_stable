import 'package:flutter/material.dart';
import 'package:flutter_app_stable/src/screens/edit_user_screen.dart';
import 'package:flutter_app_stable/src/screens/user_screen.dart';
import 'package:flutter_app_stable/src/screens/users_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:imperative_page_routes/imperative_page_routes.dart';

part 'routes.g.dart';

@TypedGoRoute<UsersRoute>(
  path: '/users',
  routes: [
    TypedGoRoute<UserRoute>(
      path: ':id',
      routes: [
        TypedGoRoute<EditUserRoute>(path: 'edit'),
      ],
    ),
  ],
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

class EditUserRoute extends GoRouteData {
  const EditUserRoute({
    required this.id,
  });

  final String id;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return BottomSheetPage(
      key: state.pageKey,
      child: EditUserScreen(id: id),
    );
  }
}
