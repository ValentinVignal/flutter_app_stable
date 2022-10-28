import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/form/form_dao.dart';
import 'package:flutter_app_stable/database/entities/form/form_status.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';

class FormContent extends StatefulWidget {
  const FormContent({
    required this.id,
    required this.filters,
    Key? key,
  }) : super(key: key);

  final int id;

  final FormsFiltersParameters filters;

  @override
  State<FormContent> createState() => _FormContentState();
}

class _FormContentState extends State<FormContent> {
  @override
  void didUpdateWidget(covariant FormContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.id != widget.id) {
      formStream = Database.instance.formDao.watchSingle(
        widget.id,
      );
    }
  }

  late var formStream = Database.instance.formDao.watchSingle(
    widget.id,
  );
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FormWithProject>(
      stream: formStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorWidget(snapshot.error!);
        } else if (!snapshot.hasData) {
          return const CircularProgressIndicator();
        }
        final formWithProject = snapshot.data!;
        final theme = Theme.of(context);
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                border:
                    Border.all(color: formWithProject.form.status.color(theme)),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Form - ${formWithProject.form.name}',
                      style: theme.textTheme.displaySmall,
                    ),
                    Text(
                      '${formWithProject.form.id} - ${formWithProject.form.status.name}',
                    ),
                    Text(
                      '${formWithProject.project.id} - ${formWithProject.project.name} - ${formWithProject.project.status.name}',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            IconButton(
              tooltip: 'Open task of same id and equivalent status',
              icon: const Icon(Icons.task),
              onPressed: () async {
                final relatedTask = await Database.instance.taskDao
                    .watchSingle(formWithProject.form.id)
                    .first;
                final parameters = TasksFiltersParameters.fromParsedData(
                  statuses: {relatedTask.task.status},
                );
                router.push(
                  TaskRoute(
                          taskId: formWithProject.form.id,
                          status: parameters.status)
                      .location,
                );
              },
            ),
          ],
        );
      },
    );
  }
}
