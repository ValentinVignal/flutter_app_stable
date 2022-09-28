import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/task/task_status.dart';
import 'package:flutter_app_stable/filters/global/project/project_applied_filter.dart';
import 'package:flutter_app_stable/router/drawer_page.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/screens/tasks/filters/task_filter.dart';
import 'package:flutter_app_stable/screens/tasks/filters/task_status_filter.dart';
import 'package:flutter_app_stable/screens/tasks/task_provider.dart';
import 'package:flutter_app_stable/widgets/filter_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({
    required this.filters,
    Key? key,
  }) : super(key: key);

  final TasksFiltersParameters filters;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        taskStatusAppliedFilterProvider.overrideWithValue(
          filters.parsedStatuses,
        ),
        taskAppliedFilterProvider.overrideWithValue(
          filters.parsedIds,
        ),
      ],
      child: Scaffold(
        body: TaskList(
          filters: filters,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Database.instance.taskDao.insert();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class TaskList extends ConsumerWidget {
  const TaskList({
    required this.filters,
    Key? key,
  }) : super(key: key);

  final TasksFiltersParameters filters;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksAsyncValue = ref.watch(filteredTasksProvider);
    final child = tasksAsyncValue.map(
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
                final parameters = TasksFiltersParameters.fromParsedData(
                  statuses: ref.read(taskStatusAppliedFilterProvider),
                  ids: ref.read(taskAppliedFilterProvider),
                );
                final page = TaskRoute(
                  taskId: taskWithProject.task.id,
                  status: parameters.status,
                  id: parameters.id,
                );
                router.pushDrawer(page.location);
              },
            );
          },
        );
      },
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FilterBar(
          local: [
            FilterBarLocalFilterParameter<TaskStatus>(
              filter: taskStatusFilterProvider,
              onChanged: (statuses) {
                _onLocalFilterChange(ref: ref, statuses: statuses);
              },
            ),
            FilterBarLocalFilterParameter<int>(
              filter: taskFilterProvider,
              onChanged: (ids) {
                _onLocalFilterChange(ref: ref, ids: ids);
              },
            ),
          ],
          global: [projectFilterProvider],
        ),
        Expanded(
          child: child,
        ),
      ],
    );
  }

  void _onLocalFilterChange({
    required WidgetRef ref,
    Set<TaskStatus>? statuses,
    Set<int>? ids,
  }) {
    final parameters = TasksFiltersParameters.fromParsedData(
      statuses: statuses ?? ref.read(taskStatusAppliedFilterProvider),
      ids: ids ?? ref.read(taskAppliedFilterProvider),
    );
    router.replace(
      TasksRoute(
        status: parameters.status,
        id: parameters.id,
      ).location,
    );
  }
}
