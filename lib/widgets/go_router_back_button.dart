import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/router.dart';

class GoRouterBackButton extends StatelessWidget {
  const GoRouterBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: router,
      builder: (context, child) {
        if (router.canPop()) {
          return child!;
        }
        return const SizedBox.shrink();
      },
      child: BackButton(
        onPressed: router.pop,
      ),
    );
  }
}
