import 'package:flutter/material.dart';
import 'package:flutter_app_stable/screens/login.dart';
import 'package:flutter_app_stable/screens/projects/project.dart';
import 'package:flutter_app_stable/screens/projects/projects.dart';
import 'package:flutter_app_stable/screens/sign_up.dart';
import 'package:go_router/go_router.dart';

part 'pages.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  String? redirect() {
    // TODO: If logged in, go to projects
    // TODO: Looks how to know manipulate URI. (look at named location).
    return '/login';
  }
}

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context) => const LoginScreen();
}

@TypedGoRoute<SignUpRoute>(path: '/sign-up')
class SignUpRoute extends GoRouteData {
  const SignUpRoute();

  @override
  Widget build(BuildContext context) => const SignUpScreen();
}

@TypedGoRoute<ProjectsRoute>(
  path: '/projects',
  routes: [
    TypedGoRoute<ProjectRoute>(path: ':id'),
  ],
)
class ProjectsRoute extends GoRouteData {
  const ProjectsRoute();

  @override
  Widget build(BuildContext context) => const ProjectsScreen();
}

// Nested route don't need to be decorated as the [TypedGoRoute<NestedRoute>] is
// already instantiated in the `routes` parameter of the
// [TypedGoRoute<RootRoute>]s.
class ProjectRoute extends GoRouteData {
  const ProjectRoute({
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) => ProjectScreen(id: id);
}
