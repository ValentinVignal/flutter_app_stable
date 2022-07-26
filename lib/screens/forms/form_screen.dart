import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/form/form_dao.dart';
import 'package:flutter_app_stable/database/entities/form/form_status.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({required this.id, Key? key}) : super(key: key);

  final String id;

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  late final formStream =
      Database.instance.formDao.watchSingle(int.parse(widget.id));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<FormWithProject>(
        stream: formStream,
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
          );
        },
      ),
    );
  }
}
