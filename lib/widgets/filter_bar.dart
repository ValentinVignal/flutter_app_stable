import 'package:flutter/material.dart';
import 'package:flutter_app_stable/filters/applied_filter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({
    this.filters = const [],
    Key? key,
  }) : super(key: key);

  final Iterable<StateProvider<AppliedFilter>> filters;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: theme.colorScheme.surface,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: filters
              .map(
                (filter) => FilterWidget(
                  appliedFilter: filter,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class FilterWidget<T> extends ConsumerWidget {
  const FilterWidget({
    required this.appliedFilter,
    Key? key,
  }) : super(key: key);

  final StateProvider<AppliedFilter<T>> appliedFilter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(appliedFilter);

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
        final filterNotifier = ref.read(appliedFilter.notifier);
        filterNotifier.state = filterNotifier.state.copyWithSelection(
          id,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text),
      ),
    );
  }
}
