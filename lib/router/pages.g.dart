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
        projectId: state.queryParams['project-id'],
      );

  String get location => GoRouteData.$location(
        '/projects',
        queryParams: {
          if (projectId != null) 'project-id': projectId!,
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
  static TasksRoute _fromState(GoRouterState state) => const TasksRoute();

  String get location => GoRouteData.$location(
        '/tasks',
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
  static FormsRoute _fromState(GoRouterState state) => const FormsRoute();

  String get location => GoRouteData.$location(
        '/forms',
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
