import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/services/cache.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            try {
              router.pop();
            } catch (_) {
              // https://github.com/flutter/flutter/issues/104232
            }
          },
        ),
        title: const Text('Projects'),
        actions: [
          IconButton(
            onPressed: () {
              Cache.box.clear();
              router.goNamed(WebPage.login.pageName);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: const Center(
        child: Text('projects'),
      ),
    );
  }
}
