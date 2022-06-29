import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/page_name.dart';
import 'package:flutter_app_stable/router/router.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            router.goNamed(WebPageName.login.pageName);
          },
          child: const Text('login'),
        ),
      ),
    );
  }
}
