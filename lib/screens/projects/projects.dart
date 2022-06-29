import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/page_name.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/screens/projects/data.dart';
import 'package:flutter_app_stable/services/cache.dart';
import 'package:flutter_app_stable/widgets/go_router_back_button.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const GoRouterBackButton(),
        title: const Text('Projects'),
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
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(projects[index].name),
            onTap: () {
              final page = ProjectWebPage(id: projects[index].id);
              router.pushNamed(page.name.name, params: page.params);
            },
          );
        },
      ),
    );
  }
}
