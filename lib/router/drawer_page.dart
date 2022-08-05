import 'package:flutter/material.dart';

class DrawerPage extends Page {
  const DrawerPage({
    required this.child,
  });

  final Widget child;

  @override
  Route createRoute(BuildContext context) {
    return _DrawerPageRouter(
      settings: this,
    );
  }
}

class _DrawerPageRouter extends TransitionRoute {
  _DrawerPageRouter({
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
                child: (settings as DrawerPage).child,
              ),
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
