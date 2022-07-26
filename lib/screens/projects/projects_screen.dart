import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/project/project_status.dart';
import 'package:flutter_app_stable/database/entities/project/projects_provider.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ProjectList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Database.instance.projectDao.insert();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ProjectList extends ConsumerWidget {
  const ProjectList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectsAsyncValue = ref.watch(filteredProjectsProvider);
    return projectsAsyncValue.map<Widget>(
      error: (error) {
        return Center(child: ErrorWidget(error));
      },
      loading: (_) => const Center(child: CircularProgressIndicator()),
      data: (data) {
        return ListView.builder(
          itemCount: data.value.length,
          itemBuilder: (context, index) {
            final project = data.value[index];
            final theme = Theme.of(context);
            return ListTile(
              leading: DecoratedBox(
                decoration: BoxDecoration(
                  color: project.status.color(theme),
                  shape: BoxShape.circle,
                ),
                child: const SizedBox.square(dimension: 8),
              ),
              title: Text(project.name),
              subtitle: Text('${project.id} - ${project.status.name}'),
              onTap: () {
                final page = ProjectRoute(id: project.id.toString());
                router.push(page.location, extra: page);
              },
            );
          },
        );
      },
    );
  }
}
