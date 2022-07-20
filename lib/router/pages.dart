import 'package:flutter/material.dart';
import 'package:flutter_app_stable/screens/login.dart';
import 'package:flutter_app_stable/screens/projects/project.dart';
import 'package:flutter_app_stable/screens/projects/projects.dart';
import 'package:flutter_app_stable/screens/sign_up.dart';
import 'package:flutter_app_stable/screens/tasks/tasks.dart';
import 'package:flutter_app_stable/widgets/left_pane.dart';
import 'package:flutter_app_stable/widgets/top_bar.dart';
import 'package:go_router/go_router.dart';

part 'pages.g.dart';

class _AuthenticatedScreen extends StatelessWidget {
  const _AuthenticatedScreen({required this.child, Key? key}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const LeftPane(),
        Expanded(
          child: Column(
            children: [
              const TopBar(),
              Expanded(
                child: child,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

abstract class AuthenticatedRoute extends GoRouteData {
  const AuthenticatedRoute();

  @override
  Page<void> buildPage(BuildContext context) {
    return CustomTransitionPage<void>(
      transitionsBuilder: (
        context,
        animation,
        secondaryAnimation,
        child,
      ) =>
          FadeTransition(
        opacity: animation,
        child: child,
      ),
      child: _AuthenticatedScreen(
        child: buildScreen(),
      ),
    );
  }

  Widget buildScreen();
}

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
class ProjectsRoute extends AuthenticatedRoute {
  const ProjectsRoute();

  @override
  Widget buildScreen() => const ProjectsScreen();
}

// Nested route don't need to be decorated as the [TypedGoRoute<NestedRoute>] is
// already instantiated in the `routes` parameter of the
// [TypedGoRoute<RootRoute>]s.
class ProjectRoute extends AuthenticatedRoute {
  const ProjectRoute({
    required this.id,
  });

  final String id;

  @override
  Widget buildScreen() => ProjectScreen(id: id);
}

@TypedGoRoute<TasksRoute>(
  path: '/tasks',
  routes: [
    TypedGoRoute<TaskRoute>(path: ':id'),
  ],
)
class TasksRoute extends AuthenticatedRoute {
  const TasksRoute();

  @override
  Widget buildScreen() => const TasksScreen();
}

class TaskRoute extends AuthenticatedRoute {
  const TaskRoute({
    required this.id,
  });

  final String id;

  @override
  Widget buildScreen() => const TasksScreen();
}
