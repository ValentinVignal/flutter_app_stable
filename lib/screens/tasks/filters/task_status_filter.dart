import 'package:flutter_app_stable/database/entities/task/task_status.dart';
import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/utils/option.dart';
import 'package:riverpod/riverpod.dart';

final taskStatusAppliedFilterProvider = Provider.autoDispose<Set<TaskStatus>>(
  (ref) => const {},
);

final taskStatusFilterProvider = Provider.autoDispose<LocalFilter<TaskStatus>>(
  (ref) {
    final appliedFilters = ref.watch(taskStatusAppliedFilterProvider);
    return LocalFilter(
      selected: appliedFilters,
      options: TaskStatus.values.map(
        (taskStatus) => Option(id: taskStatus, name: taskStatus.name),
      ),
      name: 'Status',
    );
  },
  dependencies: [taskStatusAppliedFilterProvider],
);
