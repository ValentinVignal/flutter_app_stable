import 'package:flutter/material.dart';
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
                router.goNamed(WebPage.login.pageName);
              },
              child: const Text('home'),
            ),
          ],
        ),
      ),
    );
  }
}
