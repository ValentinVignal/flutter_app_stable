import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/task/task_dao.dart';
import 'package:flutter_app_stable/database/entities/task/task_status.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/screens/tasks/filters/task_filter.dart';
import 'package:flutter_app_stable/screens/tasks/filters/task_status_filter.dart';
import 'package:flutter_app_stable/screens/tasks/task_provider.dart';
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
      overrides: [
        taskStatusAppliedFilterProvider.overrideWithValue(
          filters.parsedStatuses,
        ),
        taskAppliedFilterProvider.overrideWithValue(
          filters.parsedIds,
        ),
      ],
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
  void didUpdateWidget(covariant TaskScreenContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.id != widget.id) {
      taskStream = Database.instance.taskDao.watchSingle(
        widget.id,
      );
    }
  }

  late var taskStream = Database.instance.taskDao.watchSingle(
    widget.id,
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {
                assert(router.canPop());
                router.pop();
              },
              icon: const Icon(Icons.close),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                _PreviousNextButton(
                  id: widget.id,
                  type: _PreviousNext.previous,
                ),
                Expanded(
                  child: StreamBuilder<TaskWithProject>(
                    stream: taskStream,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(child: ErrorWidget(snapshot.error!));
                      } else if (!snapshot.hasData) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      final formWithProject = snapshot.data!;
                      final theme = Theme.of(context);
                      return Center(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    formWithProject.task.status.color(theme)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Task - ${formWithProject.task.name}',
                                  style: theme.textTheme.displaySmall,
                                ),
                                Text(
                                  '${formWithProject.task.id} - ${formWithProject.task.status.name}',
                                ),
                                Text(
                                  '${formWithProject.project.id} - ${formWithProject.project.name} - ${formWithProject.project.status.name}',
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                _PreviousNextButton(
                  id: widget.id,
                  type: _PreviousNext.next,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum _PreviousNext {
  previous,
  next,
}

class _PreviousNextButton extends ConsumerWidget {
  const _PreviousNextButton({
    required this.id,
    required this.type,
    Key? key,
  }) : super(key: key);

  final int id;
  final _PreviousNext type;

  String get _text {
    switch (type) {
      case _PreviousNext.previous:
        return 'Previous';
      case _PreviousNext.next:
        return 'Next';
    }
  }

  IconData get _icon {
    switch (type) {
      case _PreviousNext.previous:
        return Icons.arrow_back;
      case _PreviousNext.next:
        return Icons.arrow_forward;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(filteredTasksProvider).asData?.value ?? const [];
    final index = tasks.indexWhere((task) => task.task.id == id);
    final bool enabled;
    switch (type) {
      case _PreviousNext.previous:
        enabled = index > 0;
        break;
      case _PreviousNext.next:
        enabled = index != -1 && index < tasks.length - 1;
        break;
    }
    return IconButton(
      tooltip: '$_text task',
      onPressed: enabled
          ? () {
              final delta = type == _PreviousNext.previous ? -1 : 1;
              final parameters = TasksFiltersParameters.fromParsedData(
                statuses: ref.read(taskStatusAppliedFilterProvider),
                ids: ref.read(taskAppliedFilterProvider),
              );
              router.replace(
                TaskRoute(
                  taskId: tasks[index + delta].task.id,
                  status: parameters.status,
                  id: parameters.id,
                ).location,
              );
            }
          : null,
      icon: Icon(_icon),
    );
  }
}
