import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/page_name.dart';
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
              router.goNamed(WebPageName.login.pageName);
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
                final page = ProjectWebPage(id: projects.first.id);
                router.goNamed(page.name.name, params: page.params);
              },
              child: const Text('Go first'),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                final page = ProjectWebPage(id: projects.first.id);
                router.pushNamed(page.name.name, params: page.params);
              },
              child: const Text('Push first'),
            ),
          ],
        ),
      ),
    );
  }
}
