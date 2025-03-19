import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:web/web.dart';

final onExitKeys = <ValueKey<String>>{};

void warnRefresh() {
  window.onbeforeunload = _onBeforeUnload.toJS;
}

void _onBeforeUnload(Event event) {
  if (onExitKeys.isNotEmpty) {
    event.preventDefault();
  }
}

class WarnRefresh extends StatefulWidget {
  const WarnRefresh({required this.child, super.key});

  final Widget child;

  @override
  State<WarnRefresh> createState() => _WarnRefreshState();
}

class _WarnRefreshState extends State<WarnRefresh> {
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
