import 'package:flutter/material.dart';

/// {@template nl.popup_menu_child}
/// A [PopupMenuEntry] that displays a [child].
///
/// Unlike [PopupMenuItem], it does not represent any value.
///
/// See also:
///
///  * [PopupMenuItem], a popup menu entry for a single value.
///  * [PopupMenuDivider], a popup menu entry that is just a horizontal line.
///  * [CheckedPopupMenuItem], a popup menu item with a checkbox.
///  * [showMenu], a method to dynamically show a popup menu at a given location.
///  * [PopupMenuButton], an [IconButton] that automatically shows a menu when
///    it is tapped.
/// {@endtemplate}
class PopupMenuChild extends PopupMenuEntry<Never> {
  /// {@macro nl.popup_menu_child}
  const PopupMenuChild({
    super.key,
    required this.child,
  });

  /// The child to display in the menu.
  final Widget child;

  @override
  double get height => kMinInteractiveDimension;

  @override
  bool represents(void value) => false;
  @override
  State<PopupMenuChild> createState() => _PopupMenuChildState();
}

class _PopupMenuChildState extends State<PopupMenuChild> {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
