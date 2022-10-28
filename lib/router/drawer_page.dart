import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:go_router/go_router.dart';

class DrawerPage extends Page {
  const DrawerPage({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Route createRoute(BuildContext context) {
    return _DrawerPageRoute(
      settings: this,
    );
  }
}

class _DrawerPageRoute extends TransitionRoute {
  _DrawerPageRoute({
    required DrawerPage settings,
  }) : super(
          settings: settings,
        );
  @override
  Iterable<OverlayEntry> createOverlayEntries() {
    return [
      OverlayEntry(
        builder: (context) {
          return Row(
            children: [
              const Spacer(flex: 2),
              Expanded(
                  child: SlideTransition(
                position: animation!.drive(
                  Tween(
                    begin: const Offset(1, 0),
                    end: const Offset(0, 0),
                  ),
                ),
                child: (settings as DrawerPage).child,
              )),
            ],
          );
        },
      ),
    ];
  }

  @override
  bool get opaque => false;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 200);
}

/// Navigator observer to store the history of navigator changes.
///
/// `Navigator.of(context)` returns the [NavigatorState] of the given context.
/// However, `_history` is a private field and cannot be accessed. This
/// navigator observer stores the history of the navigator and makes it
/// available.
class NavigationHistoryObserver extends NavigatorObserver {
  NavigationHistoryObserver._internal();

  /// {@template nl.navigator_history_observer.history}
  /// The history of the navigator
  /// {@endtemplate}
  final List<Route<dynamic>?> _history = <Route<dynamic>?>[];

  /// {@macro nl.navigator_history_observer.history}
  List<Route<dynamic>> get history => _history.whereType<Route>().toList();

  /// Returns the current route.
  Route<dynamic>? get top => _history.last;

  /// A stream that broadcasts whenever the navigation history changes.
  final StreamController<NavigatorHistoryChange>
      _historyChangeStreamController = StreamController.broadcast();

  /// The stream of changes in the navigator history.
  Stream<NavigatorHistoryChange> get historyChangeStream =>
      _historyChangeStreamController.stream;

  /// The instance of the [NavigationHistoryObserver].
  static final NavigationHistoryObserver instance =
      NavigationHistoryObserver._internal();

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _history.removeLast();
    _historyChangeStreamController.add(NavigatorHistoryChange(
      action: NavigationStackAction.pop,
      newRoute: route,
      oldRoute: previousRoute,
    ));
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _history.add(route);
    _historyChangeStreamController.add(NavigatorHistoryChange(
      action: NavigationStackAction.push,
      newRoute: route,
      oldRoute: previousRoute,
    ));
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _history.remove(route);
    _historyChangeStreamController.add(NavigatorHistoryChange(
      action: NavigationStackAction.remove,
      newRoute: route,
      oldRoute: previousRoute,
    ));
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    final oldRouteIndex = _history.indexOf(oldRoute);
    _history.replaceRange(oldRouteIndex, oldRouteIndex + 1, [newRoute]);
    _historyChangeStreamController.add(NavigatorHistoryChange(
      action: NavigationStackAction.replace,
      newRoute: newRoute,
      oldRoute: oldRoute,
    ));
  }
}

/// Contains information of one change in the navigator history.
class NavigatorHistoryChange {
  /// Contains information of one change in the navigator history.
  NavigatorHistoryChange({
    required this.action,
    this.newRoute,
    this.oldRoute,
  });

  /// The performed action.
  final NavigationStackAction action;

  /// The new route.
  final Route<dynamic>? newRoute;

  /// The old route.
  final Route<dynamic>? oldRoute;
}

/// Possible actions performed by the [Navigator].
enum NavigationStackAction {
  /// Push.
  push,

  /// Pop.
  pop,

  /// Remove.
  remove,

  /// Replace.
  replace,
}

extension GoRouterDrawerPageExtension on GoRouter {
  static final navigatorObserver = NavigationHistoryObserver.instance;

  void pushDrawer(String location) {
    if (navigatorObserver.top is _DrawerPageRoute) {
      router.replace(location);
    } else {
      router.push(location);
    }
  }
}
