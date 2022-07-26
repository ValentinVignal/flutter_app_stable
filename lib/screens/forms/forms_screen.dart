import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/form/form_provider.dart';
import 'package:flutter_app_stable/database/entities/form/form_status.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormsScreen extends StatelessWidget {
  const FormsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const FormList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Database.instance.formDao.insert();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class FormList extends ConsumerWidget {
  const FormList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksAsyncValue = ref.watch(filteredFormsProvider);
    return tasksAsyncValue.map(
        error: (error) => Center(child: ErrorWidget(error)),
        loading: (_) => const Center(child: CircularProgressIndicator()),
        data: (data) {
          return ListView.builder(
            itemCount: data.value.length,
            itemBuilder: (context, index) {
              final formWithProject = data.value.elementAt(index);
              final theme = Theme.of(context);
              return ListTile(
                leading: DecoratedBox(
                  decoration: BoxDecoration(
                    color: formWithProject.form.status.color(theme),
                    shape: BoxShape.circle,
                  ),
                  child: const SizedBox.square(dimension: 8),
                ),
                title: Text(formWithProject.form.name),
                subtitle: Text(
                    '${formWithProject.form.id} - ${formWithProject.form.status.name} - Project: ${formWithProject.project.name} (${formWithProject.form.projectId})'),
                onTap: () {
                  final page =
                      FormRoute(id: formWithProject.form.id.toString());
                  router.push(page.location, extra: page);
                },
              );
            },
          );
        });
  }
}
