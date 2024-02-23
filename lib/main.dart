import 'package:flutter_app_stable/popup_menu_child.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

final selectionProvider = Provider.autoDispose<Set<int>>((ref) {
  return const {};
});

final optionsProvider = StreamProvider<List<int>>((ref) async* {
  await Future<void>.delayed(const Duration(seconds: 1));
  yield List.generate(100, (index) => index);
});

final orderedOptionsProvider = Provider.autoDispose<AsyncValue<List<int>>>(
  (ref) {
    final selected = ref.watch(selectionProvider);
    return ref.watch(optionsProvider).whenData((options) {
      final selectedOptions = options.where((option) {
        return selected.contains(option);
      });
      final unselectedOptions = options.where((option) {
        return !selected.contains(option);
      });
      return selectedOptions.followedBy(unselectedOptions).toList();
    });
  },
  dependencies: [selectionProvider, optionsProvider],
);

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: ProviderScope(
        overrides: [
          selectionProvider.overrideWithValue(const {1, 2}),
        ],
        child: const Scaffold(
          body: _Content(),
        ),
      ),
    );
  }
}

class _Content extends ConsumerWidget {
  const _Content({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final container = ProviderScope.containerOf(context);
    return Center(
      child: PopupMenuButton(
        itemBuilder: (context) {
          return [
            PopupMenuChild(
              child: ProviderScope(
                parent: container,
                child: const _Popup(),
              ),
            ),
          ];
        },
        child: const Text('Popup'),
      ),
    );
  }
}

class _Popup extends ConsumerWidget {
  const _Popup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderedOptions =
        ref.watch(orderedOptionsProvider).valueOrNull ?? const [];
    final selection = ref.watch(selectionProvider);
    return Column(
      children: orderedOptions
          .map(
            (option) => CheckboxListTile(
              value: selection.contains(option),
              onChanged: (_) {},
              title: Text(option.toString()),
            ),
          )
          .toList(),
    );
  }
}
