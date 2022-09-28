import 'package:flutter_app_stable/database/entities/project/project_status.dart';
import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/utils/option.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final projectStatusAppliedFilterProvider =
    Provider.autoDispose<Set<ProjectStatus>>(
  (ref) => const {},
);

final projectStatusFilterProvider =
    Provider.autoDispose<LocalFilter<ProjectStatus>>(
  (ref) {
    final appliedFilters = ref.watch(projectStatusAppliedFilterProvider);
    return LocalFilter(
      selected: appliedFilters,
      options: ProjectStatus.values.map(
        (projectStatus) => Option(id: projectStatus, name: projectStatus.name),
      ),
      name: 'Status',
    );
  },
  dependencies: [projectStatusAppliedFilterProvider],
);
