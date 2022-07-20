import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';

class _LeftPaneHeroTag extends ValueKey<void> {
  const _LeftPaneHeroTag() : super(null);
}

class LeftPane extends StatelessWidget {
  const LeftPane({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: const _LeftPaneHeroTag(),
      child: SizedBox(
        width: 250,
        child: Scaffold(
          backgroundColor: Theme.of(context).cardColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'GoRouter',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      title: const Text('Projects'),
                      onTap: () {
                        const route = ProjectsRoute();
                        router.go(route.location);
                      },
                    ),
                    ListTile(
                      onTap: () {
                        const route = TasksRoute();
                        router.go(route.location);
                      },
                      title: const Text('Tasks'),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              ListTile(
                onTap: () {
                  showAboutDialog(
                      context:
                          router.routerDelegate.navigatorKey.currentContext!);
                },
                title: const Text('About'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
