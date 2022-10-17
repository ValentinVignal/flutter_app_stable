import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

final valueProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});

final countProvider = StateProvider.autoDispose<int>(
  (ref) => ref.watch(valueProvider),
  dependencies: [valueProvider],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        home: Home(
          value: 0,
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    required this.value,
    super.key,
  });

  final int value;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        valueProvider.overrideWithValue(StateController(value)),
      ],
      child: const ScopedHome(),
    );
  }
}

class ScopedHome extends StatelessWidget {
  const ScopedHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const Item(),
          ProviderScope(
            overrides: [countProvider],
            child: const Item(),
          ),
          ProviderScope(
            overrides: [countProvider],
            child: const Item(),
          ),
        ],
      ),
    );
  }
}

class Item extends ConsumerWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(valueProvider);
    final count = ref.watch(countProvider);
    return ListTile(
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            tooltip: 'value',
            icon: const Icon(Icons.add),
            onPressed: () {
              ref.read(valueProvider.notifier).state++;
            },
          ),
          IconButton(
            tooltip: 'count',
            icon: const Icon(Icons.add),
            onPressed: () {
              ref.read(countProvider.notifier).state++;
            },
          ),
        ],
      ),
      title: Text('Value: $value - Count: $count'),
      trailing: IconButton(
        icon: const Icon(Icons.navigate_next),
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => Home(
                value: count,
              ),
            ),
          );
        },
      ),
    );
  }
}
