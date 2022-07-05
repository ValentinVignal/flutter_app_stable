import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/services/cache.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // TODO: Make back button work.
      // leading: const GoRouterBackButton(),
      title: const Text('Top bar'),
      actions: [
        IconButton(
          onPressed: () {
            Cache.box.clear();
            const route = LoginRoute();
            router.go(route.location);
          },
          icon: const Icon(Icons.logout),
        ),
      ],
    );
  }
}
