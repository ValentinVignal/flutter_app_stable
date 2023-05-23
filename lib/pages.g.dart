// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pages.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $myRoute,
    ];

RouteBase get $myRoute => GoRouteData.$route(
      path: '/',
      factory: $MyRouteExtension._fromState,
    );

extension $MyRouteExtension on MyRoute {
  static MyRoute _fromState(GoRouterState state) => MyRoute(
        params: state.queryParametersAll['params']?.map(int.parse).toList() ??
            const [],
      );

  String get location => GoRouteData.$location(
        '/',
        queryParams: {
          if (params != const [])
            'params': params.map((e) => e.toString()).toList(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}
