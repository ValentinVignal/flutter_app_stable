import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'main.g.dart';

enum MyEnum {
  value0,
  value1,
}

@TypedGoRoute<MyRoute>(path: '/')
class MyRoute extends GoRouteData {
  const MyRoute({
    this.iterable,
  });

  final List<MyEnum>? iterable;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const Placeholder();
}
