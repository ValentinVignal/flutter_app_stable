import 'package:flutter_app_stable/utils/option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

// https://github.com/rrousselGit/riverpod/issues/1523

part 'filter.freezed.dart';

@freezed
class Filter<T> with _$Filter<T> {
  const factory Filter({
    required String name,
    required Iterable<Option<T>> options,
    required StateController<Set<T>> appliedFilterStateController,
  }) = _Filter;

  const Filter._();

  Set<T> get selected => appliedFilterStateController.state;
}
