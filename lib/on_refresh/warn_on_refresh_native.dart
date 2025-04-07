import 'package:flutter/material.dart';

class WarnOnRefresh extends StatelessWidget {
  const WarnOnRefresh({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
