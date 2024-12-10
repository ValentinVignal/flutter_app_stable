// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $documentsRoute,
    ];

RouteBase get $documentsRoute => GoRouteData.$route(
      path: '/documents',
      factory: $DocumentsRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':id',
          factory: $DocumentRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'edit',
              factory: $DocumentEditRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $DocumentsRouteExtension on DocumentsRoute {
  static DocumentsRoute _fromState(GoRouterState state) =>
      const DocumentsRoute();

  String get location => GoRouteData.$location(
        '/documents',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DocumentRouteExtension on DocumentRoute {
  static DocumentRoute _fromState(GoRouterState state) => DocumentRoute(
        id: int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/documents/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DocumentEditRouteExtension on DocumentEditRoute {
  static DocumentEditRoute _fromState(GoRouterState state) => DocumentEditRoute(
        id: int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/documents/${Uri.encodeComponent(id.toString())}/edit',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
