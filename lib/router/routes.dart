import 'package:flutter/material.dart';
import 'package:flutter_app_stable/screens/document.dart';
import 'package:flutter_app_stable/screens/document_edit.dart';
import 'package:flutter_app_stable/screens/documents.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<DocumentsRoute>(
  path: '/documents',
  routes: [
    TypedGoRoute<DocumentRoute>(
      path: ':id',
      routes: [
        TypedGoRoute<DocumentEditRoute>(path: 'edit'),
      ],
    ),
  ],
)
class DocumentsRoute extends GoRouteData {
  const DocumentsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DocumentsScreen();
  }
}

class DocumentRoute extends GoRouteData {
  const DocumentRoute({
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DocumentScreen(
      id: id,
    );
  }
}

class DocumentEditRoute extends GoRouteData {
  const DocumentEditRoute({
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DocumentEditScreen(
      id: id,
    );
  }
}
