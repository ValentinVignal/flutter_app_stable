import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:go_router/go_router.dart';

class GoRouterBackButton extends StatelessWidget {
  const GoRouterBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: routerListenable,
      builder: (context, child) {
        final router = GoRouter.of(context);
        return Visibility(
          visible: router.canPop(),
          child: child!,
        );
      },
      child: BackButton(
        onPressed: () {
          router.pop();
        },
      ),
    );
  }
}
