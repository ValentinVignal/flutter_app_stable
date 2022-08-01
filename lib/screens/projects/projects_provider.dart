import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/screens/projects/filters/projects_filters.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filteredProjectsProvider = StreamProvider.autoDispose<List<ProjectData>>(
  (ref) {
    final projectFilters = ref.watch(projectsFiltersProvider);
    return Database.instance.projectDao.watch(
      ids: projectFilters.projectFilter.selected,
      statuses: projectFilters.projectStatusFilter.selected,
    );
  },
  dependencies: [projectsFiltersProvider],
);
