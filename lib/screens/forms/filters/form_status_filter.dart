import 'package:flutter_app_stable/database/entities/form/form_status.dart';
import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/utils/option.dart';
import 'package:riverpod/riverpod.dart';

final formStatusAppliedFilterProvider = Provider.autoDispose<Set<FormStatus>>(
  (ref) => const {},
);

final formStatusFilterProvider = Provider.autoDispose<LocalFilter<FormStatus>>(
  (ref) {
    final appliedFilters = ref.watch(formStatusAppliedFilterProvider);
    return LocalFilter(
      selected: appliedFilters,
      options: FormStatus.values.map(
        (formStatus) => Option(id: formStatus, name: formStatus.name),
      ),
      name: 'Status',
    );
  },
  dependencies: [
    formStatusAppliedFilterProvider,
  ],
);
