import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/filters/global/project/project_filter_options.dart';
import 'package:flutter_app_stable/utils/option.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The selected project IDs that are selected in the project global filter.
final projectAppliedFilterProvider = StateProvider<Set<int>>(
  (ref) => const {},
);

/// The global project filters with the selected IDs and the projects available.
final projectFilterProvider = Provider.autoDispose<Filter<int>>(
  (ref) {
    final appliedFiltersNotifier =
        ref.watch(projectAppliedFilterProvider.state);
    final projects = ref.watch(projectsProvider);
    return Filter(
      appliedFilterStateController: appliedFiltersNotifier,
      options: projects.asData?.value.map(
            (project) => Option(id: project.id, name: project.name),
          ) ??
          const [],
      name: 'Project',
    );
  },
  dependencies: [
    projectsProvider,
    projectAppliedFilterProvider.state,
  ],
);
