import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: ProviderScope(
        overrides: [
          parameterProvider.overrideWithValue(null),
        ],
        child: const Scaffold(
          body: Column(
            children: [
              Widget1(),
              Widget2(),
            ],
          ),
        ),
      ),
    );
  }
}

class Widget1 extends ConsumerWidget {
  const Widget1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final version = ref.watch(combinedProvider) != null;

    return Text('version $version');
  }
}

class Widget2 extends ConsumerWidget {
  const Widget2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final combined = ref.watch(combinedProvider) != null;
    final provider = ref.watch(secondProvider) != null;
    return Text('notifier $provider, combined $combined');
  }
}

final parameterProvider = Provider.autoDispose<int?>((ref) => null);

final futureProvider = FutureProvider.autoDispose<int>((ref) async {
  return 42;
});

final secondProvider = Provider.autoDispose<int?>((ref) {
  return ref.watch(futureProvider).valueOrNull;
}, dependencies: [futureProvider]);

final combinedProvider = Provider.autoDispose<int?>(
  (ref) {
    return ref.watch(parameterProvider) ?? ref.watch(secondProvider);
  },
  dependencies: [parameterProvider, secondProvider],
);
