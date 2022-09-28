import 'package:flutter_app_stable/utils/option.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// https://github.com/rrousselGit/riverpod/issues/1523

part 'filter.freezed.dart';

abstract class Filter<T> {
  String get name;
  Set<T> get selected;
  Iterable<Option<T>> get options;
}

@freezed
class LocalFilter<T> with _$LocalFilter<T> implements Filter<T> {
  const factory LocalFilter({
    required String name,
    required Iterable<Option<T>> options,
    required Set<T> selected,
  }) = _LocalFilter;

  const LocalFilter._();
}

@freezed
class GlobalFilter<T> with _$GlobalFilter<T> implements Filter<T> {
  const factory GlobalFilter({
    required String name,
    required Iterable<Option<T>> options,
    required StateController<Set<T>> appliedFilterStateController,
  }) = _GlobalFilter;

  const GlobalFilter._();

  @override
  Set<T> get selected => appliedFilterStateController.state;
}
