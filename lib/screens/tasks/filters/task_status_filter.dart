import 'package:flutter_app_stable/database/entities/task/task_status.dart';
import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/utils/option.dart';
import 'package:riverpod/riverpod.dart';

final taskStatusAppliedFilterProvider =
    StateProvider.autoDispose<Set<TaskStatus>>(
  (ref) => const {},
);

final taskStatusFilterProvider = Provider.autoDispose<Filter<TaskStatus>>(
  (ref) {
    final appliedFiltersNotifier =
        ref.watch(taskStatusAppliedFilterProvider.state);
    return Filter(
      appliedFilterStateController: appliedFiltersNotifier,
      options: TaskStatus.values.map(
        (taskStatus) => Option(id: taskStatus, name: taskStatus.name),
      ),
      name: 'Status',
    );
  },
  dependencies: [taskStatusAppliedFilterProvider.state],
);
