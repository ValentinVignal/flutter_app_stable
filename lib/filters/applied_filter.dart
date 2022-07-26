import 'package:flutter_app_stable/utils/option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'applied_filter.freezed.dart';

@freezed
class AppliedFilter<T> with _$AppliedFilter<T> {
  const factory AppliedFilter({
    required String name,
    required Set<T> selected,
    required Iterable<Option<T>> options,
  }) = _AppliedFilter;

  const AppliedFilter._();

  AppliedFilter<T> copyWithSelection(T id) {
    final _selected = Set<T>.from(selected);
    if (_selected.contains(id)) {
      _selected.remove(id);
    } else {
      _selected.add(id);
    }
    return copyWith(selected: _selected);
  }
}
