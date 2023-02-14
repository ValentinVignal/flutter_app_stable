import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screen.dart';

part 'auth_routes.g.dart';

@TypedGoRoute<FeedRoute>(path: '/feed')
class FeedRoute extends GoRouteData {
  const FeedRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Screen(name: 'Feed');
  }
}

@TypedGoRoute<SettingsRoute>(path: '/settings')
class SettingsRoute extends GoRouteData {
  const SettingsRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Screen(name: 'Settings');
  }
}
