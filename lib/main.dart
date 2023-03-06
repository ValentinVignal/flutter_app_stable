import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'main.g.dart';

@TypedGoRoute<MyRoute>(path: '/')
class MyRoute extends GoRouteData {
  const MyRoute({
    this.iterable = const [],
  });

  final Iterable<int> iterable;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const Placeholder();
}
