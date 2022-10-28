import 'package:flutter/material.dart';

class DialogPage extends Page {
  const DialogPage({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Route createRoute(BuildContext context) {
    return DialogRoute(
      settings: this,
      context: context,
      builder: (context) {
        ModalRoute.of(context);
        return child;
      },
    );
  }
}
