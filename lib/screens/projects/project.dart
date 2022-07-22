import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';

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
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Project - ${project.name}',
                    style: Theme.of(context).textTheme.displaySmall),
                Text(project.id.toString())
              ],
            ),
          );
        },
      ),
    );
  }
}
