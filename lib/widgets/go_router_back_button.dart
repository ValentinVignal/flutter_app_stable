import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouterBackButton extends StatelessWidget {
  const GoRouterBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return Visibility(
      visible: router.canPop(),
      child: BackButton(
        onPressed: () {
          router.pop();
        },
      ),
    );
  }
}
