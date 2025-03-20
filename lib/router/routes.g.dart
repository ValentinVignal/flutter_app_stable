// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'users',
          factory: $UsersRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: ':id',
              factory: $UserRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'documents',
          factory: $DocumentsRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: ':id',
              factory: $DocumentRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UsersRouteExtension on UsersRoute {
  static UsersRoute _fromState(GoRouterState state) => UsersRoute(
        ageFrom: _$convertMapValue(
                'age-from', state.uri.queryParameters, int.parse) ??
            0,
        ageTo:
            _$convertMapValue('age-to', state.uri.queryParameters, int.parse) ??
                100,
        role: state.uri.queryParametersAll['role']
                ?.map(_$UserRoleEnumMap._$fromName)
                .toSet() ??
            const {},
      );

  String get location => GoRouteData.$location(
        '/users',
        queryParams: {
          if (ageFrom != 0) 'age-from': ageFrom.toString(),
          if (ageTo != 100) 'age-to': ageTo.toString(),
          if (role != const {})
            'role': role.map((e) => _$UserRoleEnumMap[e]).toList(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$UserRoleEnumMap = {
  UserRole.admin: 'admin',
  UserRole.user: 'user',
  UserRole.guest: 'guest',
  UserRole.readOnly: 'read-only',
};

extension $UserRouteExtension on UserRoute {
  static UserRoute _fromState(GoRouterState state) => UserRoute(
        id: int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/users/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

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

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}
