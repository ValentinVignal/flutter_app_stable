import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/project/project_status.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';

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

class ProjectList extends StatefulWidget {
  const ProjectList({Key? key}) : super(key: key);

  @override
  State<ProjectList> createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  final _projectsStream = Database.instance.projectDao.watch();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ProjectData>>(
      stream: _projectsStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: ErrorWidget(snapshot.error!));
        } else if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            final project = snapshot.data![index];
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
