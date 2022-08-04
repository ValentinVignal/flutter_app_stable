import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/screens/forms/filters/form_filter_options.dart';
import 'package:flutter_app_stable/utils/option.dart';
import 'package:riverpod/riverpod.dart';

final formAppliedFilterProvider = StateProvider.autoDispose<Set<int>>(
  (ref) => const {},
);

final formFilterProvider = Provider.autoDispose<Filter<int>>(
  (ref) {
    final appliedFiltersNotifier = ref.watch(formAppliedFilterProvider.state);
    final forms = ref.watch(formsProvider);
    return Filter(
      appliedFilterStateController: appliedFiltersNotifier,
      options: forms.asData?.value.map(
            (form) => Option(id: form.form.id, name: form.form.name),
          ) ??
          const [],
      name: 'Form',
    );
  },
  dependencies: [
    formsProvider,
    formAppliedFilterProvider.state,
  ],
);
