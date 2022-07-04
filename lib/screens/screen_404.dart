import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';

class Screen404 extends StatelessWidget {
  const Screen404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '404',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                const route = LoginRoute();
                router.go(route.location, extra: route);
              },
              child: const Text('home'),
            ),
          ],
        ),
      ),
    );
  }
}
