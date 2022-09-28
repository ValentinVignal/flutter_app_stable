import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

final searchProvider = StateProvider.autoDispose<String>((ref) => '');

Stream<String> getStream(String search) async* {
  await Future.delayed(const Duration(milliseconds: 500));
  yield search;
}

final streamProvider = StreamProvider.autoDispose<String>((ref) {
  final search = ref.watch(
    searchProvider,
  ); // Simulates that the stream will be recomputed every time the search changes.
  return getStream(search);
});

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const SearchTextField(),
          ),
          body: const Screen(),
        ),
      ),
    );
  }
}

class SearchTextField extends ConsumerWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      onChanged: (value) {
        ref.read(searchProvider.notifier).state = value;
      },
    );
  }
}

class Screen extends ConsumerWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchInStream = ref.watch(streamProvider);
    return Center(
      child: searchInStream.when(
        data: (data) => Text(data),
        loading: () => const CircularProgressIndicator(),
        error: (error, stack) => Text(error.toString()),
      ),
    );
  }
}
