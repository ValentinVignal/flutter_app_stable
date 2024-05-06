import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final stateProvider = StateProvider.autoDispose<int>((ref) => 0);

final streamProvider = StreamProvider.autoDispose<int>(
  (ref) async* {
    final state = ref.watch(stateProvider);
    for (var i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield state * 100 + i;
    }
  },
  dependencies: [stateProvider],
);

// Note: it works properly if `streamProvider` is replaced with:

// Stream<int> _buildStream(int value) async* {
//   for (var i = 0; i < 10; i++) {
//     await Future.delayed(const Duration(seconds: 1));
//     yield value * 100 + i;
//   }
// }

// final streamProvider = StreamProvider.autoDispose<int>(
//   (ref) {
//     final state = ref.watch(stateProvider);
//     return _buildStream(state);
//   },
//   dependencies: [stateProvider],
// );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(streamProvider).valueOrNull ?? 0;
    return Scaffold(
      body: Center(
        child: Text('Value: $value'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(stateProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
