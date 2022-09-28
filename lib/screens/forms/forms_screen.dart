import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/form/form_status.dart';
import 'package:flutter_app_stable/filters/global/project/project_applied_filter.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/screens/forms/filters/form_filter.dart';
import 'package:flutter_app_stable/screens/forms/filters/form_status_filter.dart';
import 'package:flutter_app_stable/screens/forms/forms_provider.dart';
import 'package:flutter_app_stable/widgets/filter_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormsScreen extends StatelessWidget {
  const FormsScreen({
    required this.filters,
    Key? key,
  }) : super(key: key);

  final FormsFiltersParameters filters;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        formStatusAppliedFilterProvider.overrideWithValue(
          filters.parsedStatuses,
        ),
        formAppliedFilterProvider.overrideWithValue(
          filters.parsedIds,
        ),
      ],
      child: Scaffold(
        body: FormList(
          filters: filters,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Database.instance.formDao.insert();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class FormList extends ConsumerWidget {
  const FormList({
    required this.filters,
    Key? key,
  }) : super(key: key);

  final FormsFiltersParameters filters;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksAsyncValue = ref.watch(filteredFormsProvider);
    final child = tasksAsyncValue.map(
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
                final parameters = FormsFiltersParameters.fromParsedData(
                  statuses: ref.read(formStatusAppliedFilterProvider),
                  ids: ref.read(formAppliedFilterProvider),
                );
                final page = FormRoute(
                  formId: formWithProject.form.id,
                  id: parameters.id,
                  status: parameters.status,
                );
                router.push(page.location, extra: page);
              },
              trailing: IconButton(
                tooltip: 'Open task of same id',
                icon: const Icon(Icons.task),
                onPressed: () {
                  router.push(
                    TaskRoute(taskId: formWithProject.form.id).location,
                  );
                },
              ),
            );
          },
        );
      },
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FilterBar(
          local: [
            FilterBarLocalFilterParameter<FormStatus>(
              filter: formStatusFilterProvider,
              onChanged: (statuses) =>
                  _onLocalFilterChange(ref: ref, statuses: statuses),
            ),
            FilterBarLocalFilterParameter<int>(
              filter: formFilterProvider,
              onChanged: (ids) => _onLocalFilterChange(ref: ref, ids: ids),
            ),
          ],
          global: [projectFilterProvider],
        ),
        Expanded(
          child: child,
        ),
      ],
    );
  }

  void _onLocalFilterChange({
    required WidgetRef ref,
    Set<FormStatus>? statuses,
    Set<int>? ids,
  }) {
    final parameters = FormsFiltersParameters.fromParsedData(
      statuses: statuses ?? ref.read(formStatusAppliedFilterProvider),
      ids: ids ?? ref.read(formAppliedFilterProvider),
    );
    router.replace(
      FormsRoute(
        status: parameters.status,
        id: parameters.id,
      ).location,
    );
  }
}
