import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'pages.g.dart';

@TypedGoRoute<MyRoute>(path: '/')
class MyRoute extends GoRouteData {
  const MyRoute({
    this.params = const [],
  });

  final List<int> params;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Placeholder();
  }
}
