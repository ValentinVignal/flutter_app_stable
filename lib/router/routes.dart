import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stable/on_exit/on_exit.dart';
import 'package:flutter_app_stable/screens/home.dart';
import 'package:flutter_app_stable/screens/wizard.dart';
import 'package:go_router/go_router.dart';
import 'package:imperative_page_routes/imperative_page_routes.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/home',
  routes: [
    TypedGoRoute<WizardRoute>(path: 'dialog'),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

class _WizardKey with EquatableMixin implements LocalKey {
  const _WizardKey({
    required this.pageKey,
    required this.step,
  });

  final ValueKey<String> pageKey;
  final int step;

  @override
  List<Object?> get props => [pageKey, step];
}

class WizardRoute extends GoRouteData {
  const WizardRoute({
    this.$extra,
  });

  final int? $extra;

  @override
  Future<bool> onExit(BuildContext context, GoRouterState state) async {
    if (!onExitKeys.contains(state.pageKey)) {
      return true;
    }
    print(state.uri);
    final didPop = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure to exit?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text('No'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
    return didPop ?? false;
  }

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    print('extra: ${$extra}');
    return DialogPage(
      key: state.pageKey,
      child: const WarnExit(
        child: WizardScreen(),
      ),
    );
  }
}
