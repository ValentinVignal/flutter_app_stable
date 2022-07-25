part of 'pages.dart';

final $appRoutes = <GoRoute>[
  $homeRoute,
];

GoRoute get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: GHomeRoute._fromState,
      routes: [
        GoRouteData.$route(
          path: 'family/:fid',
          factory: GFamilyRoute._fromState,
          routes: [
            GoRouteData.$route(
              path: 'person/:pid',
              factory: GPersonRoute._fromState,
            ),
          ],
        ),
      ],
    );

class GHomeRoute extends HomeRoute implements GoRouteDataImpl {
  const GHomeRoute();

  factory GHomeRoute._fromState(GoRouterState state) => const GHomeRoute();

  @override
  String get location => GoRouteData.$location(
        '/',
      );

  @override
  void go(BuildContext context) {
    GoRouter.of(context).go(location);
  }
}

class GFamilyRoute extends FamilyRoute implements GoRouteDataImpl {
  const GFamilyRoute({
    required super.fid,
  });

  factory GFamilyRoute._fromState(GoRouterState state) => GFamilyRoute(
        fid: state.params['fid']!,
      );

  @override
  String get location => GoRouteData.$location(
        '/family/${Uri.encodeComponent(fid)}',
      );

  @override
  void go(BuildContext context) {
    GoRouter.of(context).go(location);
  }
}

class GPersonRoute extends PersonRoute implements GoRouteDataImpl {
  const GPersonRoute({
    required super.fid,
    required super.pid,
  });

  factory GPersonRoute._fromState(GoRouterState state) => GPersonRoute(
        fid: state.params['fid']!,
        pid: state.params['pid']!,
      );

  @override
  String get location => GoRouteData.$location(
        '/family/${Uri.encodeComponent(fid)}/person/${Uri.encodeComponent(pid)}',
      );

  @override
  void go(BuildContext context) {
    GoRouter.of(context).go(location);
  }
}
