import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  const HomeRoute({
    this.firstParameter,
    this.secondParameter = 'default',
  });

  final String? firstParameter;
  final String secondParameter;

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
