import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/screens/projects/data.dart';
import 'package:flutter_app_stable/services/cache.dart';
import 'package:flutter_app_stable/widgets/go_router_back_button.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({required this.id, Key? key}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const GoRouterBackButton(),
        title: Text('Project - $id'),
        actions: [
          IconButton(
            onPressed: () {
              Cache.box.clear();
              const route = LoginRoute();
              router.go(route.location, extra: route);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Project - $id'),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                final page = ProjectRoute(id: projects.first.id);
                router.go(page.location, extra: page);
              },
              child: const Text('Go first'),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                final page = ProjectRoute(id: projects.first.id);
                router.push(page.location, extra: page);
              },
              child: const Text('Push first'),
            ),
          ],
        ),
      ),
    );
  }
}
