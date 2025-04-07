import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:web/web.dart';

class WarnOnRefresh extends StatefulWidget {
  const WarnOnRefresh({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<WarnOnRefresh> createState() => _WarnOnRefreshState();
}

class _WarnOnRefreshState extends State<WarnOnRefresh> {
  static void _onBeforeUnload(Event event) {
    event.preventDefault();
  }

  late final OnBeforeUnloadEventHandler? _previousEventHandler;

  @override
  void initState() {
    super.initState();
    html.window.onBeforeUnload.listen((event) {
      if (event is html.BeforeUnloadEvent) event.returnValue = 'who are you?';
    });
    // _previousEventHandler = window.onbeforeunload;
    // window.onbeforeunload = _onBeforeUnload.toJS;
  }

  @override
  void dispose() {
    // window.onbeforeunload = _previousEventHandler;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
