import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/filters/global/project/project_filter_options.dart';
import 'package:flutter_app_stable/utils/option.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The selected project IDs that are selected in the project global filter.
final projectAppliedFilterProvider = StateProvider<Set<int>>(
  (ref) => const {},
);

/// The global project filters with the selected IDs and the projects available.
final projectFilterProvider = Provider.autoDispose<GlobalFilter<int>>(
  (ref) {
    // Here we listen to `.state` (and not `.notifier`) to get updates when the
    // state changes. This will lead to more rebuild at the top of the filters
    // bar/widget tree. If there are too many rebuilds, we could use `.notifier`
    // instead a use the `flutter_state_notifier` package with its
    // `StateNotifierBuilder` to listen to the `StateController` inside the
    // leafs of our widget tree.
    // https://github.com/rrousselGit/riverpod/issues/1523#issuecomment-1204063859
    final appliedFiltersNotifier =
        ref.watch(projectAppliedFilterProvider.state);
    final projects = ref.watch(projectsProvider);

    return GlobalFilter(
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
