import 'package:flutter_app_stable/database/entities/project/project_status.dart';
import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/utils/option.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final projectStatusAppliedFilterProvider =
    StateProvider.autoDispose<Set<ProjectStatus>>(
  (ref) => const {},
);

final projectStatusFilterProvider = Provider.autoDispose<Filter<ProjectStatus>>(
  (ref) {
    final appliedFiltersNotifier =
        ref.watch(projectStatusAppliedFilterProvider.state);
    return Filter(
      appliedFilterStateController: appliedFiltersNotifier,
      options: ProjectStatus.values.map(
        (projectStatus) => Option(id: projectStatus, name: projectStatus.name),
      ),
      name: 'Status',
    );
  },
  dependencies: [projectStatusAppliedFilterProvider.state],
);
