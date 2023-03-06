// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $myRoute,
    ];

GoRoute get $myRoute => GoRouteData.$route(
      path: '/',
      factory: $MyRouteExtension._fromState,
    );

extension $MyRouteExtension on MyRoute {
  static MyRoute _fromState(GoRouterState state) => MyRoute(
        iterable: state.queryParametersAll['iterable']?.map(int.parse),
      );

  String get location => GoRouteData.$location(
        '/',
        queryParams: {
          if (iterable != const [])
            'iterable': iterable?.map((e) => e.toString()).toList(),
        },
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}
