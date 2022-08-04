import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/screens/tasks/filters/task_filters.dart';
import 'package:riverpod/riverpod.dart';

final filteredTasksProvider = StreamProvider.autoDispose(
  (ref) {
    final tasksFilters = ref.watch(tasksFiltersProvider);
    return Database.instance.taskDao.watch(
      projectIds: tasksFilters.projectFilter.selected,
      statuses: tasksFilters.statusFilter.selected,
      ids: tasksFilters.taskFilter.selected,
    );
  },
  dependencies: [
    tasksFiltersProvider,
  ],
);
