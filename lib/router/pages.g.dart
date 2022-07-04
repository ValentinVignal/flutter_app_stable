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
  static ProjectsRoute _fromState(GoRouterState state) => const ProjectsRoute();

  String get location => GoRouteData.$location(
        '/projects',
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
