import 'package:flutter_app_stable/database/entities/form/form_status.dart';
import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/utils/option.dart';
import 'package:riverpod/riverpod.dart';

final formStatusAppliedFilterProvider =
    StateProvider.autoDispose<Set<FormStatus>>(
  (ref) => const {},
);

final formStatusFilterProvider = Provider.autoDispose<Filter<FormStatus>>(
  (ref) {
    final appliedFiltersNotifier =
        ref.watch(formStatusAppliedFilterProvider.state);
    return Filter(
      appliedFilterStateController: appliedFiltersNotifier,
      options: FormStatus.values.map(
        (formStatus) => Option(id: formStatus, name: formStatus.name),
      ),
      name: 'Status',
    );
  },
  dependencies: [formStatusAppliedFilterProvider.state],
);
