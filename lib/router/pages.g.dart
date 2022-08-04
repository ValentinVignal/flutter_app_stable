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
          path: ':id',
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
        id: state.params['id']!,
      );

  String get location => GoRouteData.$location(
        '/projects/${Uri.encodeComponent(id)}',
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
        id: state.params['id']!,
      );

  String get location => GoRouteData.$location(
        '/tasks/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $formsRoute => GoRouteData.$route(
      path: '/forms',
      factory: $FormsRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':id',
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
        id: state.params['id']!,
      );

  String get location => GoRouteData.$location(
        '/forms/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectsFiltersParameters _$ProjectsFiltersParametersFromJson(
        Map<String, dynamic> json) =>
    ProjectsFiltersParameters(
      status: json['status'] as String?,
    );

Map<String, dynamic> _$ProjectsFiltersParametersToJson(
        ProjectsFiltersParameters instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

TasksFiltersParameters _$TasksFiltersParametersFromJson(
        Map<String, dynamic> json) =>
    TasksFiltersParameters(
      status: json['status'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TasksFiltersParametersToJson(
        TasksFiltersParameters instance) =>
    <String, dynamic>{
      'status': instance.status,
      'id': instance.id,
    };

FormsFiltersParameters _$FormsFiltersParametersFromJson(
        Map<String, dynamic> json) =>
    FormsFiltersParameters(
      status: json['status'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$FormsFiltersParametersToJson(
        FormsFiltersParameters instance) =>
    <String, dynamic>{
      'status': instance.status,
      'id': instance.id,
    };
