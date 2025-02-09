import 'dart:math';

import 'package:flutter/material.dart';

/// A page that looks like a drawer.
class DrawerPage extends Page<dynamic> {
  /// A page that looks like a drawer.
  const DrawerPage({
    required this.child,
    super.key,
  });

  /// The child to display.
  final Widget child;

  @override
  Route<dynamic> createRoute(BuildContext context) {
    return _DrawerPageRoute(
      settings: this,
    );
  }
}

class _DrawerPageRoute extends TransitionRoute<dynamic> {
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
          return LayoutBuilder(builder: (context, constraints) {
            final width = min(
                max(500, constraints.maxWidth * 5 / 12), constraints.maxWidth);
            final flex = 100 * (width ~/ constraints.maxWidth);
            return Row(
              children: [
                Spacer(flex: max(100 - flex, 1)),
                Expanded(
                  flex: flex,
                  child: SlideTransition(
                    position: animation!.drive(
                      Tween(
                        begin: const Offset(1, 0),
                        end: Offset.zero,
                      ),
                    ),
                    child: (settings as DrawerPage).child,
                  ),
                ),
              ],
            );
          });
        },
      ),
    ];
  }

  @override
  bool get opaque => false;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 200);
}
