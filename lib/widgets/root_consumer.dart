import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// https://twitter.com/VignalValentin1/status/1552594224192688128?s=20&t=PRu9E0RFJ26OcoVh0Yv0Cw
class RootConsumer extends ConsumerStatefulWidget {
  const RootConsumer({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RootConsumerState();

  static WidgetRef? _ref;

  static WidgetRef get ref => _ref!;
}

class _RootConsumerState extends ConsumerState<RootConsumer> {
  @override
  void initState() {
    super.initState();
    RootConsumer._ref = ref;
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
