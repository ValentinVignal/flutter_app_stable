import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/project/project_status.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({required this.id, Key? key}) : super(key: key);

  final String id;

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  late final projectStream =
      Database.instance.projectDao.watchSingle(int.parse(widget.id));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<ProjectData>(
        stream: projectStream,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: ErrorWidget(snapshot.error!));
          } else if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final project = snapshot.data!;
          final theme = Theme.of(context);
          return Center(
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: project.status.color(theme)),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Project - ${project.name}',
                      style: theme.textTheme.displaySmall,
                    ),
                    Text('${project.id} - ${project.status.name}'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
