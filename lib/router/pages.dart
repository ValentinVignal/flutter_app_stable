import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/entities/form/form_status.dart';
import 'package:flutter_app_stable/database/entities/project/project_status.dart';
import 'package:flutter_app_stable/database/entities/task/task_status.dart';
import 'package:flutter_app_stable/router/drawer_page.dart';
import 'package:flutter_app_stable/screens/forms/form_screen.dart';
import 'package:flutter_app_stable/screens/forms/forms_screen.dart';
import 'package:flutter_app_stable/screens/login.dart';
import 'package:flutter_app_stable/screens/projects/project_screen.dart';
import 'package:flutter_app_stable/screens/projects/projects_screen.dart';
import 'package:flutter_app_stable/screens/sign_up.dart';
import 'package:flutter_app_stable/screens/tasks/task_screen.dart';
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

mixin AuthenticatedRoute on GoRouteData {
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
      child: build(context),
    );
  }

  @override
  Widget build(BuildContext context) => _AuthenticatedScreen(
        child: buildScreen(),
      );

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
    TypedGoRoute<ProjectRoute>(path: ':projectId'),
  ],
)
class ProjectsRoute extends GoRouteData with AuthenticatedRoute {
  const ProjectsRoute({
    this.status,
  });

  factory ProjectsRoute.fromState(GoRouterState state) =>
      $ProjectsRouteExtension._fromState(state);

  final String? status;

  @override
  Widget buildScreen() => const ProjectsScreen();
}

// Nested route don't need to be decorated as the [TypedGoRoute<NestedRoute>] is
// already instantiated in the `routes` parameter of the
// [TypedGoRoute<RootRoute>]s.
class ProjectRoute extends GoRouteData with AuthenticatedRoute {
  const ProjectRoute({
    required this.projectId,
    this.status,
  });

  final int projectId;
  final String? status;

  @override
  Widget buildScreen() => ProjectScreen(
        id: projectId,
        projectsFilters: ProjectsFiltersParameters(
          status: status,
        ),
      );
}

@JsonSerializable(
  fieldRename: FieldRename.kebab,
)
class ProjectsFiltersParameters with EquatableMixin {
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

  @override
  List<Object?> get props => [status];
}

@TypedGoRoute<TasksRoute>(
  path: '/tasks',
  routes: [
    TypedGoRoute<TaskRoute>(path: ':id'),
  ],
)
class TasksRoute extends GoRouteData with AuthenticatedRoute {
  const TasksRoute({
    this.status,
    this.id,
  });

  final String? status;
  final String? id;

  @override
  Widget buildScreen() => const TasksScreen();
}

@JsonSerializable(
  fieldRename: FieldRename.kebab,
)
class TasksFiltersParameters {
  const TasksFiltersParameters({
    this.status,
    this.id,
  });

  factory TasksFiltersParameters.fromParsedData({
    Set<TaskStatus>? statuses,
    Set<int>? ids,
  }) {
    final String? status;
    if (statuses?.isNotEmpty ?? false) {
      status = statuses!.map((status) => status.name).join(' ');
    } else {
      status = null;
    }
    final String? id;
    if (ids?.isNotEmpty ?? false) {
      id = ids!.join(' ');
    } else {
      id = null;
    }
    return TasksFiltersParameters(
      status: status,
      id: id,
    );
  }

  factory TasksFiltersParameters.fromJson(Json json) =>
      _$TasksFiltersParametersFromJson(json);

  final String? status;
  final String? id;

  Set<TaskStatus> get parsedStatuses {
    if (status == null || status!.isEmpty) return const {};
    return status!
        .split(' ')
        .map((status) => TaskStatus.fromName(status))
        .toSet();
  }

  Set<int> get parsedIds {
    if (id == null || id!.isEmpty) return const {};
    return id!.split(' ').map((id) => int.parse(id)).toSet();
  }

  Json toJson() => _$TasksFiltersParametersToJson(this);

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

  bool get isEmpty =>
      (status == null || status!.isEmpty) && (id == null || id!.isEmpty);
  bool get isNotEmpty => !isEmpty;
}

class TaskRoute extends GoRouteData with AuthenticatedRoute {
  const TaskRoute({
    required this.id,
  });

  final int id;

  @override
  Page<void> buildPage(BuildContext context) {
    return DrawerPage(
      child: buildScreen(),
    );
  }

  @override
  Widget buildScreen() => TaskScreen(id: id);
}

@TypedGoRoute<FormsRoute>(
  path: '/forms',
  routes: [
    TypedGoRoute<FormRoute>(path: ':formId'),
  ],
)
class FormsRoute extends GoRouteData with AuthenticatedRoute {
  const FormsRoute({
    this.status,
    this.id,
  });

  final String? status;
  final String? id;

  @override
  Widget buildScreen() => FormsScreen(
        filters: FormsFiltersParameters(
          id: id,
          status: status,
        ),
      );
}

@JsonSerializable(
  fieldRename: FieldRename.kebab,
)
class FormsFiltersParameters with EquatableMixin {
  const FormsFiltersParameters({
    this.status,
    this.id,
  });

  factory FormsFiltersParameters.fromParsedData({
    Set<FormStatus>? statuses,
    Set<int>? ids,
  }) {
    final String? status;
    if (statuses?.isNotEmpty ?? false) {
      status = statuses!.map((status) => status.name).join(' ');
    } else {
      status = null;
    }
    final String? id;
    if (ids?.isNotEmpty ?? false) {
      id = ids!.join(' ');
    } else {
      id = null;
    }
    return FormsFiltersParameters(
      status: status,
      id: id,
    );
  }

  factory FormsFiltersParameters.fromJson(Json json) =>
      _$FormsFiltersParametersFromJson(json);

  final String? status;
  final String? id;

  Set<FormStatus> get parsedStatuses {
    if (status == null || status!.isEmpty) return const {};
    return status!
        .split(' ')
        .map((status) => FormStatus.fromName(status))
        .toSet();
  }

  Set<int> get parsedIds {
    if (id == null || id!.isEmpty) return const {};
    return id!.split(' ').map((id) => int.parse(id)).toSet();
  }

  Json toJson() => _$FormsFiltersParametersToJson(this);

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

  bool get isEmpty =>
      (status == null || status!.isEmpty) && (id == null || id!.isEmpty);
  bool get isNotEmpty => !isEmpty;

  @override
  List<Object?> get props => [status, id];
}

class FormRoute extends GoRouteData with AuthenticatedRoute {
  const FormRoute({
    required this.formId,
    this.id,
    this.status,
  });

  final int formId;

  final String? id;
  final String? status;

  @override
  Widget buildScreen() => FormScreen(
        id: formId,
        filters: FormsFiltersParameters(
          status: status,
          id: id,
        ),
      );
}
