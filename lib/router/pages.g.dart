// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pages.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $homeRoute,
      $loginRoute,
      $signUpRoute,
      $projectsRoute,
      $tasksRoute,
      $formsRoute,
    ];

GoRoute get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $signUpRoute => GoRouteData.$route(
      path: '/sign-up',
      factory: $SignUpRouteExtension._fromState,
    );

extension $SignUpRouteExtension on SignUpRoute {
  static SignUpRoute _fromState(GoRouterState state) => const SignUpRoute();

  String get location => GoRouteData.$location(
        '/sign-up',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $projectsRoute => GoRouteData.$route(
      path: '/projects',
      factory: $ProjectsRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':projectId',
          factory: $ProjectRouteExtension._fromState,
        ),
      ],
    );

extension $ProjectsRouteExtension on ProjectsRoute {
  static ProjectsRoute _fromState(GoRouterState state) => ProjectsRoute(
        status: state.queryParams['status'],
      );

  String get location => GoRouteData.$location(
        '/projects',
        queryParams: {
          if (status != null) 'status': status!,
        },
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $ProjectRouteExtension on ProjectRoute {
  static ProjectRoute _fromState(GoRouterState state) => ProjectRoute(
        projectId: int.parse(state.params['projectId']!),
        status: state.queryParams['status'],
      );

  String get location => GoRouteData.$location(
        '/projects/${Uri.encodeComponent(projectId.toString())}',
        queryParams: {
          if (status != null) 'status': status!,
        },
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $tasksRoute => GoRouteData.$route(
      path: '/tasks',
      factory: $TasksRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':id',
          factory: $TaskRouteExtension._fromState,
        ),
      ],
    );

extension $TasksRouteExtension on TasksRoute {
  static TasksRoute _fromState(GoRouterState state) => TasksRoute(
        status: state.queryParams['status'],
        id: state.queryParams['id'],
      );

  String get location => GoRouteData.$location(
        '/tasks',
        queryParams: {
          if (status != null) 'status': status!,
          if (id != null) 'id': id!,
        },
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $TaskRouteExtension on TaskRoute {
  static TaskRoute _fromState(GoRouterState state) => TaskRoute(
        id: int.parse(state.params['id']!),
      );

  String get location => GoRouteData.$location(
        '/tasks/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $formsRoute => GoRouteData.$route(
      path: '/forms',
      factory: $FormsRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':formId',
          factory: $FormRouteExtension._fromState,
        ),
      ],
    );

extension $FormsRouteExtension on FormsRoute {
  static FormsRoute _fromState(GoRouterState state) => FormsRoute(
        status: state.queryParams['status'],
        id: state.queryParams['id'],
      );

  String get location => GoRouteData.$location(
        '/forms',
        queryParams: {
          if (status != null) 'status': status!,
          if (id != null) 'id': id!,
        },
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $FormRouteExtension on FormRoute {
  static FormRoute _fromState(GoRouterState state) => FormRoute(
        formId: int.parse(state.params['formId']!),
        id: state.queryParams['id'],
        status: state.queryParams['status'],
      );

  String get location => GoRouteData.$location(
        '/forms/${Uri.encodeComponent(formId.toString())}',
        queryParams: {
          if (id != null) 'id': id!,
          if (status != null) 'status': status!,
        },
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectsFiltersParameters _$$_ProjectsFiltersParametersFromJson(
        Map<String, dynamic> json) =>
    _$_ProjectsFiltersParameters(
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_ProjectsFiltersParametersToJson(
        _$_ProjectsFiltersParameters instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

_$_TasksFiltersParameters _$$_TasksFiltersParametersFromJson(
        Map<String, dynamic> json) =>
    _$_TasksFiltersParameters(
      status: json['status'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_TasksFiltersParametersToJson(
        _$_TasksFiltersParameters instance) =>
    <String, dynamic>{
      'status': instance.status,
      'id': instance.id,
    };

_$_FormsFiltersParameters _$$_FormsFiltersParametersFromJson(
        Map<String, dynamic> json) =>
    _$_FormsFiltersParameters(
      status: json['status'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_FormsFiltersParametersToJson(
        _$_FormsFiltersParameters instance) =>
    <String, dynamic>{
      'status': instance.status,
      'id': instance.id,
    };
