import 'package:flutter/material.dart';

import '../back_button.dart';

class AuthShell extends StatelessWidget {
  const AuthShell({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TopBar(),
        Expanded(
          child: child,
        ),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: const [
            GoRouterBackButton(),
            Expanded(
              child: Text('TopBar'),
            ),
          ],
        ),
      ),
    );
  }
}
