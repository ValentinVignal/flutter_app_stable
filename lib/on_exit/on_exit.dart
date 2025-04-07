import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final onExitKeys = <ValueKey<String>>{};

class WarnExit extends StatefulWidget {
  const WarnExit({required this.child, super.key});

  final Widget child;

  @override
  State<WarnExit> createState() => _WarnExitState();
}

class _WarnExitState extends State<WarnExit> {
  late final ValueKey<String> pageKey;
  @override
  void initState() {
    super.initState();
    pageKey = GoRouter.of(context).state!.pageKey;
    onExitKeys.add(pageKey);
  }

  @override
  void dispose() {
    onExitKeys.remove(pageKey);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
