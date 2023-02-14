import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouterBackButton extends StatelessWidget {
  const GoRouterBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    bool canPop = false;
    try {
      canPop = GoRouter.of(context).canPop();
    } catch (_) {
      //
    }
    return IconButton(
      onPressed: canPop
          ? () {
              GoRouter.of(context).pop();
            }
          : null,
      icon: const BackButtonIcon(),
    );
  }
}
