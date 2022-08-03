import 'package:flutter_app_stable/database/entities/project/project_status.dart';
import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/filters/filters.dart';
import 'package:flutter_app_stable/filters/global/project/project_applied_filter.dart';
import 'package:flutter_app_stable/screens/projects/filters/project_status_filter.dart';
import 'package:riverpod/riverpod.dart';

class ProjectsFilters extends Filters {
  ProjectsFilters({
    required this.projectFilter,
    required this.projectStatusFilter,
  });

  final Filter<int> projectFilter;
  final Filter<ProjectStatus> projectStatusFilter;

  @override
  Iterable<Filter> get global => [projectFilter];

  @override
  Iterable<Filter> get local => [projectStatusFilter];
}

final projectsFiltersProvider = Provider.autoDispose<ProjectsFilters>(
  (ref) {
    final projectFilter = ref.watch(projectFilterProvider);
    final projectStatusFilter = ref.watch(projectStatusFilterProvider);

    return ProjectsFilters(
      projectFilter: projectFilter,
      projectStatusFilter: projectStatusFilter,
    );
  },
  dependencies: [
    projectFilterProvider,
    projectStatusFilterProvider,
  ],
);
