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
        taskStatusAppliedFilterProvider,
        taskAppliedFilterProvider,
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

class TaskList extends ConsumerStatefulWidget {
  const TaskList({
    required this.filters,
    Key? key,
  }) : super(key: key);

  final TasksFiltersParameters filters;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TaskListState();
}

class _TaskListState extends ConsumerState<TaskList> {
  @override
  void initState() {
    super.initState();
    _applyTaskFilters();
  }

  @override
  void didUpdateWidget(covariant TaskList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.filters != widget.filters) {
      _applyTaskFilters();
    }
  }

  void _applyTaskFilters() {
    Future.microtask(() {
      ref.read(taskStatusAppliedFilterProvider.notifier).state =
          widget.filters.parsedStatuses;
      ref.read(taskAppliedFilterProvider.notifier).state =
          widget.filters.parsedIds;
    });
  }

  @override
  Widget build(BuildContext context) {
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
          local: [taskStatusFilterProvider, taskFilterProvider],
          global: [projectFilterProvider],
          onChanged: () {
            final parameters = TasksFiltersParameters.fromParsedData(
              statuses: ref.read(taskStatusAppliedFilterProvider),
              ids: ref.read(taskAppliedFilterProvider),
            );
            router.replace(
              TasksRoute(
                status: parameters.status,
                id: parameters.id,
              ).location,
            );
          },
        ),
        Expanded(
          child: child,
        ),
      ],
    );
  }
}
