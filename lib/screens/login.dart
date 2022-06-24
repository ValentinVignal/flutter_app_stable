import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/services/cache.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                await Cache.box.put(
                  CacheKey.userId.name,
                  'userId-${DateTime.now()}',
                );
                router.pushNamed(WebPage.projects.pageName);
              },
              child: const Text('Log in'),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                router.goNamed(WebPage.signUp.pageName);
              },
              child: const Text('Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
