import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/screens/tasks/filters/task_filter.dart';
import 'package:flutter_app_stable/screens/tasks/filters/task_status_filter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({
    required this.id,
    required this.filters,
    Key? key,
  }) : super(key: key);
  final int id;

  final TasksFiltersParameters filters;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [taskStatusAppliedFilterProvider, taskAppliedFilterProvider],
      child: TaskScreenContent(
        id: id,
        filters: filters,
      ),
    );
  }
}

class TaskScreenContent extends ConsumerStatefulWidget {
  const TaskScreenContent({
    required this.id,
    required this.filters,
    Key? key,
  }) : super(key: key);

  final int id;

  final TasksFiltersParameters filters;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TaskScreenContentState();
}

class _TaskScreenContentState extends ConsumerState<TaskScreenContent> {
  @override
  void initState() {
    super.initState();
    _applyFormFilters();
  }

  @override
  void didUpdateWidget(covariant TaskScreenContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.filters != widget.filters) {
      _applyFormFilters();
    }
    if (oldWidget.id != widget.id) {
      taskStream = Database.instance.taskDao.watchSingle(
        widget.id,
      );
    }
  }

  void _applyFormFilters() {
    Future.microtask(() {
      ref.read(taskStatusAppliedFilterProvider.notifier).state =
          widget.filters.parsedStatuses;
      ref.read(taskAppliedFilterProvider.notifier).state =
          widget.filters.parsedIds;
    });
  }

  late var taskStream = Database.instance.taskDao.watchSingle(
    widget.id,
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text('Task ${widget.id}'),
      ),
    );
  }
}
