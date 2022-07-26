import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/task/task_dao.dart';
import 'package:flutter_app_stable/database/entities/task/task_status.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const TaskList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Database.instance.taskDao.insert();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final _tasksStream = Database.instance.taskDao.watch();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Iterable<TaskWithProject>>(
      stream: _tasksStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: ErrorWidget(snapshot.error!));
        } else if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            final taskWithProject = snapshot.data!.elementAt(index);
            final theme = Theme.of(context);
            return ListTile(
              leading: DecoratedBox(
                decoration: BoxDecoration(
                  color: taskWithProject.task.status.color(theme),
                  shape: BoxShape.circle,
                ),
                child: const SizedBox.square(dimension: 8),
              ),
              title: Text(taskWithProject.task.name),
              subtitle: Text(
                  '${taskWithProject.task.id} - ${taskWithProject.task.status.name} - Project: ${taskWithProject.project.name} (${taskWithProject.task.projectId})'),
              onTap: () {
                final page = TaskRoute(id: taskWithProject.task.id.toString());
                router.push(page.location, extra: page);
              },
            );
          },
        );
      },
    );
  }
}
