import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<MyRoute>(
  path: '/my-route',
)
class MyRoute extends GoRouteData {
  const MyRoute({
    required this.requiredQueryParameter,
  });

  final String requiredQueryParameter;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const Placeholder();
}
