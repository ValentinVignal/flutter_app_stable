import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/pages.dart';
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
              onPressed: () {
                Cache.box.put(
                  CacheKey.userId.name,
                  'userId-${DateTime.now()}',
                );
                // The login should be done automatically with the refresh
                // listenable.
              },
              child: const Text('Log in'),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                const page = SignUpRoute();
                router.go(page.location, extra: page);
              },
              child: const Text('Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
