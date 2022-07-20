import 'package:flutter/material.dart';
import 'package:flutter_app_stable/services/cache.dart';
import 'package:flutter_app_stable/widgets/go_router_back_button.dart';

// Even if we were to make is a stateful widget to reuse the state when we us
// GoRouter's `go` method, it won't work for `push` as the previous top bar
// won't be deactivated but kept in the widget tree.
class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const GoRouterBackButton(),
      title: const Text('Top bar'),
      actions: [
        IconButton(
          onPressed: () {
            Cache.box.clear();
            // The redirection should be handled automatically with the refresh.
          },
          icon: const Icon(Icons.logout),
        ),
      ],
    );
  }
}
