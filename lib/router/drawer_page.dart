import 'package:flutter/material.dart';

class DrawerPage extends Page {
  const DrawerPage({
    required this.child,
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
  bool canTransitionTo(TransitionRoute<dynamic> nextRoute) =>
      nextRoute is! _DrawerPageRoute;

  @override
  bool canTransitionFrom(TransitionRoute<dynamic> previousRoute) =>
      previousRoute is! _DrawerPageRoute;

  @override
  bool get opaque => false;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 200);
}
