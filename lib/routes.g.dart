// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $homeRoute,
    ];

GoRoute get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute(
        firstParameter: state.queryParams['first-parameter'],
        secondParameter: state.queryParams['second-parameter'],
      );

  String get location => GoRouteData.$location(
        '/',
        queryParams: {
          if (firstParameter != null) 'first-parameter': firstParameter!,
          if (secondParameter != null) 'second-parameter': secondParameter,
        },
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
