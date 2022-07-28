import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/filters/project/project_filter_options.dart';
import 'package:flutter_app_stable/utils/option.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final projectAppliedFiltersProvider = StateProvider<Set<int>>(
  (ref) => const {},
);

final projectFilterProvider = Provider<Filter<int>>((ref) {
  final appliedFilters = ref.watch(projectAppliedFiltersProvider);
  final projects = ref.watch(projectsProvider);
  return Filter(
    appliedFilterProvider: projectAppliedFiltersProvider,
    options: projects.asData?.value.map(
          (project) => Option(id: project.id, name: project.name),
        ) ??
        const [],
    selected: appliedFilters,
    name: 'Project',
  );
});
