import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/document.dart';
import 'package:flutter_app_stable/database/user.dart';
import 'package:flutter_app_stable/screens/documents/document/document_screen.dart';
import 'package:flutter_app_stable/screens/documents/documents_screen.dart';
import 'package:flutter_app_stable/screens/home/home_screen.dart';
import 'package:flutter_app_stable/screens/users/user/user_screen.dart';
import 'package:flutter_app_stable/screens/users/users_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<UsersRoute>(
      path: 'users',
      routes: [
        TypedGoRoute<UserRoute>(path: ':id'),
      ],
    ),
    TypedGoRoute<DocumentsRoute>(
      path: 'documents',
      routes: [
        TypedGoRoute<DocumentRoute>(path: ':id'),
      ],
    ),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

class UsersRoute extends GoRouteData {
  const UsersRoute({
    this.ageFrom = 0,
    this.ageTo = 100,
    this.role = const {},
  });

  final int ageFrom;
  final int ageTo;
  final Set<UserRole> role;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProviderScope(
      overrides: [
        userAgeFilterProvider.overrideWithValue((from: ageFrom, to: ageTo)),
        userRoleFilterProvider.overrideWithValue(BuiltSet(role)),
      ],
      child: const UsersScreen(),
    );
  }
}

class UserRoute extends GoRouteData {
  const UserRoute({required this.id});

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UserScreen(id: id);
  }
}

class DocumentsRoute extends GoRouteData {
  const DocumentsRoute({
    this.type = const {},
    this.createdBy = const {},
  });

  final Set<DocumentType> type;
  final Set<int> createdBy;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProviderScope(
      overrides: [
        documentTypeFilterProvider.overrideWithValue(BuiltSet(type)),
        documentCreatedByFilterProvider.overrideWithValue(BuiltSet(createdBy)),
      ],
      child: const DocumentsScreen(),
    );
  }
}

class DocumentRoute extends GoRouteData {
  const DocumentRoute({required this.id});

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DocumentScreen(id: id);
  }
}
