import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/task/task_provider.dart';
import 'package:flutter_app_stable/database/entities/task/task_status.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

class TaskList extends ConsumerWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksAsyncValue = ref.watch(filteredTasksProvider);
    return tasksAsyncValue.map(
      error: (error) => Center(child: ErrorWidget(error)),
      loading: (_) => const Center(child: CircularProgressIndicator()),
      data: (data) {
        return ListView.builder(
          itemCount: data.value.length,
          itemBuilder: (context, index) {
            final taskWithProject = data.value.elementAt(index);
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
