import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/entities/project/project_status.dart';
import 'package:flutter_app_stable/screens/forms/form_screen.dart';
import 'package:flutter_app_stable/screens/forms/forms_screen.dart';
import 'package:flutter_app_stable/screens/login.dart';
import 'package:flutter_app_stable/screens/projects/project_screen.dart';
import 'package:flutter_app_stable/screens/projects/projects_screen.dart';
import 'package:flutter_app_stable/screens/sign_up.dart';
import 'package:flutter_app_stable/screens/tasks/tasks_screen.dart';
import 'package:flutter_app_stable/services/auth_service.dart';
import 'package:flutter_app_stable/utils/utils.dart';
import 'package:flutter_app_stable/widgets/left_pane.dart';
import 'package:flutter_app_stable/widgets/top_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pages.g.dart';

// TODO: Find a better way to classify pages.
const authenticatedRootSegments = {'projects', 'tasks', 'forms'};
const unauthenticatedRootSegments = {'sign-up', 'login'};

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
    if (AuthService.isAuthenticatedValueListenable.value) {
      return '/projects';
    } else {
      return '/login';
    }
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
  const ProjectsRoute({
    this.status,
  });

  final String? status;

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

@JsonSerializable(
  fieldRename: FieldRename.kebab,
)
class ProjectsFiltersParameters {
  const ProjectsFiltersParameters({
    this.status,
  });

  factory ProjectsFiltersParameters.fromParsedData({
    Set<ProjectStatus>? statuses,
  }) {
    final String? status;
    if (statuses?.isNotEmpty ?? false) {
      status = statuses!.map((status) => status.name).join(' ');
    } else {
      status = null;
    }
    return ProjectsFiltersParameters(status: status);
  }

  factory ProjectsFiltersParameters.fromJson(Json json) =>
      _$ProjectsFiltersParametersFromJson(json);

  final String? status;

  Set<ProjectStatus> get parsedStatuses {
    if (status == null || status!.isEmpty) return const {};
    return status!
        .split(' ')
        .map((status) => ProjectStatus.fromName(status))
        .toSet();
  }

  Json toJson() => _$ProjectsFiltersParametersToJson(this);

  Json mergeJson(Json other) {
    final newJson = {...other};
    for (final entry in toJson().entries) {
      if (entry.value == null) {
        newJson.remove(entry.key);
      } else {
        newJson[entry.key] = entry.value;
      }
    }
    return newJson;
  }

  bool get isEmpty => status == null || status!.isEmpty;
  bool get isNotEmpty => !isEmpty;
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

@TypedGoRoute<FormsRoute>(
  path: '/forms',
  routes: [
    TypedGoRoute<FormRoute>(path: ':id'),
  ],
)
class FormsRoute extends AuthenticatedRoute {
  const FormsRoute();

  @override
  Widget buildScreen() => const FormsScreen();
}

class FormRoute extends AuthenticatedRoute {
  const FormRoute({
    required this.id,
  });

  final String id;

  @override
  Widget buildScreen() => FormScreen(id: id);
}
