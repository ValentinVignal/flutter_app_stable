import 'package:flutter/material.dart';
import 'package:flutter_app_stable/filters/filter.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterBar extends ConsumerWidget {
  const FilterBar({
    this.local = const [],
    this.global = const [],
    Key? key,
  }) : super(key: key);

  final Iterable<ProviderBase<Filter>> local;
  final Iterable<ProviderBase<Filter>> global;

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
                  onChanged: router.refresh,
                ),
              ),
              const SizedBox(width: 16),
              const VerticalDivider(),
              const SizedBox(width: 16),
              ...local.map(
                (filter) => FilterWidget(
                  filterProvider: filter,
                  onChanged: () {},
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
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  final ProviderBase<Filter<T>> filterProvider;

  final VoidCallback onChanged;

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
        final appliedFilterNotifier = ref.read(
          filter.appliedFilterProvider.notifier,
        );
        final newSet = appliedFilterNotifier.state.toSet();
        if (newSet.contains(id)) {
          newSet.remove(id);
        } else {
          newSet.add(id);
        }
        appliedFilterNotifier.state = newSet;
        onChanged();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text),
      ),
    );
  }
}
