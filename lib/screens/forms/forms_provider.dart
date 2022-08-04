import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/screens/forms/filters/forms_filters.dart';
import 'package:riverpod/riverpod.dart';

final filteredFormsProvider = StreamProvider.autoDispose(
  (ref) {
    final formsFilters = ref.watch(formsFiltersProvider);
    return Database.instance.formDao.watch(
      projectIds: formsFilters.projectFilter.selected,
      statuses: formsFilters.statusFilter.selected,
      ids: formsFilters.formFilter.selected,
    );
  },
  dependencies: [
    formsFiltersProvider,
  ],
);
