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
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'pages.freezed.dart';
part 'pages.g.dart';

const authenticatedRootSegments = {
  ProjectsRoute.urlSegment,
  TasksRoute.urlSegment,
  FormsRoute.urlSegment,
};
const unauthenticatedRootSegments = {
  LoginRoute.urlSegment,
  SignUpRoute.urlSegment,
};

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
    if (AuthService.isAuthenticatedValueListenable.value) {
      return '/${ProjectsRoute.urlSegment}';
    } else {
      return '/${LoginRoute.urlSegment}';
    }
  }
}

@TypedGoRoute<LoginRoute>(path: '/${LoginRoute.urlSegment}')
class LoginRoute extends GoRouteData {
  const LoginRoute();

  static const urlSegment = 'login';

  @override
  Widget build(BuildContext context) => const LoginScreen();
}

@TypedGoRoute<SignUpRoute>(path: '/${SignUpRoute.urlSegment}')
class SignUpRoute extends GoRouteData {
  const SignUpRoute();

  static const urlSegment = 'sign-up';

  @override
  Widget build(BuildContext context) => const SignUpScreen();
}

@TypedGoRoute<ProjectsRoute>(
  path: '/${ProjectsRoute.urlSegment}',
  routes: [
    TypedGoRoute<ProjectRoute>(path: ':projectId'),
  ],
)
class ProjectsRoute extends GoRouteData with AuthenticatedRoute {
  const ProjectsRoute({
    this.status,
  });

  static const urlSegment = 'projects';

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

@freezed
class ProjectsFiltersParameters with _$ProjectsFiltersParameters {
  const ProjectsFiltersParameters._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory ProjectsFiltersParameters({
    String? status,
  }) = _ProjectsFiltersParameters;

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

  Set<ProjectStatus> get parsedStatuses {
    if (status == null || status!.isEmpty) return const {};
    return status!
        .split(' ')
        .map((status) => ProjectStatus.fromName(status))
        .toSet();
  }

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
  path: '/${TasksRoute.urlSegment}',
  routes: [
    TypedGoRoute<TaskRoute>(path: ':taskId'),
  ],
)
class TasksRoute extends GoRouteData with AuthenticatedRoute {
  const TasksRoute({
    this.status,
    this.id,
  });

  static const urlSegment = 'tasks';
  final String? status;
  final String? id;

  @override
  Widget buildScreen() => TasksScreen(
        filters: TasksFiltersParameters(
          status: status,
          id: id,
        ),
      );
}

@freezed
class TasksFiltersParameters with _$TasksFiltersParameters {
  const TasksFiltersParameters._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory TasksFiltersParameters({
    String? status,
    String? id,
  }) = _TasksFiltersParameters;

  factory TasksFiltersParameters.fromJson(Json json) =>
      _$TasksFiltersParametersFromJson(json);

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
    required this.taskId,
    this.status,
    this.id,
  });

  final int taskId;
  final String? status;
  final String? id;

  @override
  Page<void> buildPage(BuildContext context) {
    return DrawerPage(
      child: buildScreen(),
    );
  }

  @override
  Widget buildScreen() => TaskScreen(
        id: taskId,
        filters: TasksFiltersParameters(
          id: id,
          status: status,
        ),
      );
}

@TypedGoRoute<FormsRoute>(
  path: '/${FormsRoute.urlSegment}',
  routes: [
    TypedGoRoute<FormRoute>(path: ':formId'),
  ],
)
class FormsRoute extends GoRouteData with AuthenticatedRoute {
  const FormsRoute({
    this.status,
    this.id,
  });

  static const urlSegment = 'forms';

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

@freezed
class FormsFiltersParameters with _$FormsFiltersParameters {
  const FormsFiltersParameters._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory FormsFiltersParameters({
    String? status,
    String? id,
  }) = _FormsFiltersParameters;

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
  Widget buildScreen() {
    return FormScreen(
      id: formId,
      filters: FormsFiltersParameters(
        status: status,
        id: id,
      ),
    );
  }
}
