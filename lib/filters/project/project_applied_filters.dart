import 'package:flutter_app_stable/filters/applied_filter.dart';
import 'package:flutter_app_stable/filters/project/project_filter_options.dart';
import 'package:flutter_app_stable/utils/option.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final projectAppliedFiltersProvider = StateProvider<AppliedFilter<int>>((ref) {
  final projects = ref.watch(projectsProvider);
  return AppliedFilter(
    options: projects.asData?.value.map(
          (project) => Option(id: project.id, name: project.name),
        ) ??
        const [],
    selected: const {},
    name: 'Project',
  );
});
