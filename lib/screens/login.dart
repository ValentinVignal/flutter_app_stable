import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            context.goNamed(WebPage.signUp.pageName);
          },
          child: const Text('Sign up'),
        ),
      ),
    );
  }
}
