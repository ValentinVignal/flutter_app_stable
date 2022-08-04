import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/screens/tasks/filters/task_filter_options.dart';
import 'package:flutter_app_stable/utils/option.dart';
import 'package:riverpod/riverpod.dart';

final taskAppliedFilterProvider = StateProvider.autoDispose<Set<int>>(
  (ref) => const {},
);

final taskFilterProvider = Provider.autoDispose<Filter<int>>(
  (ref) {
    final appliedFiltersNotifier = ref.watch(taskAppliedFilterProvider.state);
    final tasks = ref.watch(tasksProvider);
    return Filter(
      appliedFilterStateController: appliedFiltersNotifier,
      options: tasks.asData?.value.map(
            (task) => Option(id: task.task.id, name: task.task.name),
          ) ??
          const [],
      name: 'Task',
    );
  },
  dependencies: [
    tasksProvider,
    taskAppliedFilterProvider.state,
  ],
);
