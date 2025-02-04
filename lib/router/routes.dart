import 'package:flutter/widgets.dart';
import 'package:flutter_app_stable/screens/home/home.dart';
import 'package:flutter_app_stable/screens/home/notification_drawer.dart';
import 'package:flutter_app_stable/screens/login.dart';
import 'package:flutter_app_stable/user_notifier.dart';
import 'package:go_router/go_router.dart';
import 'package:imperative_page_routes/imperative_page_routes.dart';

part 'routes.g.dart';

@TypedGoRoute<RootRoute>(
  path: '/',
)
class RootRoute extends GoRouteData {
  const RootRoute();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final isLoggedIn = userNotifier.value != null;
    if (isLoggedIn) {
      return const HomeRoute().location;
    } else {
      return const LoginRoute().location;
    }
  }
}

@TypedGoRoute<LoginRoute>(
  path: '/login',
)
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}

@TypedGoRoute<HomeRoute>(
  path: '/home',
  routes: [
    TypedGoRoute<NotificationRoute>(
      path: 'notifications/:id',
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

class NotificationRoute extends GoRouteData {
  const NotificationRoute({
    required this.id,
  });

  final String id;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return DrawerPage(
      child: NotificationDrawer(id: id),
    );
  }
}
