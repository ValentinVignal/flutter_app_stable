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

    return Text(version.toString());
  }
}

class Widget2 extends ConsumerWidget {
  const Widget2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPublished = ref.watch(combinedProvider) != null;
    final versions = ref.watch(providerNotifier);
    return Text('versions ${versions != null}, $isPublished');
  }
}

final parameterProvider = Provider.autoDispose<int?>((ref) => null);

final streamProvider = StreamProvider.autoDispose<int>((ref) async* {
  yield 42;
});

final providerNotifier =
    StateNotifierProvider.autoDispose<Notifier, int?>((ref) {
  return Notifier(ref.watch(streamProvider).valueOrNull);
}, dependencies: [streamProvider]);

class Notifier extends StateNotifier<int?> {
  Notifier(super.state);
}

final effectiveParameterProvider = Provider.autoDispose<int?>(
  (ref) {
    return ref.watch(parameterProvider) ?? ref.watch(providerNotifier);
  },
  dependencies: [parameterProvider, providerNotifier],
);

final combinedProvider = Provider.autoDispose<int?>(
  (ref) {
    final param = ref.watch(effectiveParameterProvider) ?? 0;
    final value = ref.watch(providerNotifier) ?? 0;
    return value + param;
  },
  dependencies: [effectiveParameterProvider, providerNotifier],
);
