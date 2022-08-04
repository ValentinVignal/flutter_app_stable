import 'package:flutter_app_stable/database/entities/task/task_status.dart';
import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/filters/filters.dart';
import 'package:flutter_app_stable/filters/global/project/project_applied_filter.dart';
import 'package:flutter_app_stable/screens/tasks/filters/task_filter.dart';
import 'package:flutter_app_stable/screens/tasks/filters/task_status_filter.dart';
import 'package:riverpod/riverpod.dart';

class TasksFilters extends Filters {
  const TasksFilters({
    required this.projectFilter,
    required this.statusFilter,
    required this.taskFilter,
  });

  final Filter<int> projectFilter;
  final Filter<TaskStatus> statusFilter;
  final Filter<int> taskFilter;

  @override
  @override
  Iterable<Filter> get global => [projectFilter];

  @override
  Iterable<Filter> get local => [statusFilter, taskFilter];
}

final tasksFiltersProvider = Provider.autoDispose<TasksFilters>(
  (ref) {
    final projectFilter = ref.watch(projectFilterProvider);
    final statusFilter = ref.watch(taskStatusFilterProvider);
    final taskFilter = ref.watch(taskFilterProvider);

    return TasksFilters(
      projectFilter: projectFilter,
      statusFilter: statusFilter,
      taskFilter: taskFilter,
    );
  },
  dependencies: [
    projectFilterProvider,
    taskStatusFilterProvider,
    taskFilterProvider,
  ],
);
