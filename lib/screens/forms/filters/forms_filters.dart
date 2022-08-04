import 'package:flutter_app_stable/database/entities/form/form_status.dart';
import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/filters/filters.dart';
import 'package:flutter_app_stable/filters/global/project/project_applied_filter.dart';
import 'package:flutter_app_stable/screens/forms/filters/form_filter.dart';
import 'package:flutter_app_stable/screens/forms/filters/form_status_filter.dart';
import 'package:riverpod/riverpod.dart';

class FormsFilters extends Filters {
  const FormsFilters({
    required this.projectFilter,
    required this.statusFilter,
    required this.formFilter,
  });

  final Filter<int> projectFilter;
  final Filter<FormStatus> statusFilter;
  final Filter<int> formFilter;

  @override
  @override
  Iterable<Filter> get global => [projectFilter];

  @override
  Iterable<Filter> get local => [statusFilter, formFilter];
}

final formsFiltersProvider = Provider.autoDispose<FormsFilters>(
  (ref) {
    final projectFilter = ref.watch(projectFilterProvider);
    final statusFilter = ref.watch(formStatusFilterProvider);
    final formFilter = ref.watch(formFilterProvider);

    return FormsFilters(
      projectFilter: projectFilter,
      statusFilter: statusFilter,
      formFilter: formFilter,
    );
  },
  dependencies: [
    projectFilterProvider,
    formStatusFilterProvider,
    formFilterProvider,
  ],
);
