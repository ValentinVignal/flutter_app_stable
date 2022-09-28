import 'package:flutter/material.dart';
import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterBarLocalFilterParameter<T> {
  FilterBarLocalFilterParameter({
    required this.filter,
    required void Function(Set<T>) onChanged,
  }) : _onChanged = onChanged;

  final ProviderBase<LocalFilter<T>> filter;
  final void Function(Set<T>) _onChanged;

  void onChanged(Set value) => _onChanged(value as Set<T>);
}

class FilterBar extends ConsumerWidget {
  const FilterBar({
    this.local = const [],
    this.global = const [],
    Key? key,
  }) : super(key: key);

  final Iterable<FilterBarLocalFilterParameter> local;
  final Iterable<ProviderBase<GlobalFilter>> global;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Material(
      color: theme.colorScheme.surface,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicHeight(
          child: Row(
            children: [
              ...global.map(
                (filter) => FilterWidget(
                  filterProvider: filter,
                  onSelected: (selected) {
                    ref.read(filter).appliedFilterStateController.state =
                        selected;
                    router.refresh();
                  },
                ),
              ),
              const SizedBox(width: 16),
              const VerticalDivider(),
              const SizedBox(width: 16),
              ...local.map(
                (filter) => FilterWidget(
                  filterProvider: filter.filter,
                  onSelected: (set) => filter.onChanged(set),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterWidget<T> extends ConsumerWidget {
  const FilterWidget({
    required this.filterProvider,
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final ProviderBase<Filter<T>> filterProvider;

  final void Function(Set<T>) onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(filterProvider);

    final selected = filter.options.where(
      (option) => filter.selected.contains(option.id),
    );
    String text = '${filter.name}: ';
    if (selected.isEmpty) {
      text += '(none)';
    } else {
      text += selected.map((option) => option.name).join('|');
    }
    return PopupMenuButton<T>(
      itemBuilder: (context) {
        return filter.options.map((f) {
          return CheckedPopupMenuItem<T>(
            checked: filter.selected.contains(f.id),
            value: f.id,
            child: Text(f.name),
          );
        }).toList();
      },
      onSelected: (id) {
        if (id == null) return;
        final filter = ref.read(filterProvider);
        final newSet = filter.selected.toSet();
        if (newSet.contains(id)) {
          newSet.remove(id);
        } else {
          newSet.add(id);
        }
        onSelected(newSet);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text),
      ),
    );
  }
}
