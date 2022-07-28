import 'package:flutter_app_stable/utils/option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

part 'filter.freezed.dart';

@freezed
class Filter<T> with _$Filter<T> {
  const factory Filter({
    required String name,
    required Set<T> selected,
    required Iterable<Option<T>> options,
    required StateProvider<Set<T>> appliedFilterProvider,
  }) = _Filter;

  const Filter._();

  Filter<T> copyWithSelection(T id) {
    final _selected = Set<T>.from(selected);
    if (_selected.contains(id)) {
      _selected.remove(id);
    } else {
      _selected.add(id);
    }
    return copyWith(selected: _selected);
  }
}
