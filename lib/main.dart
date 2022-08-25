import 'package:flutter/material.dart';
import 'package:flutter_app_stable/provider.dart';
import 'package:flutter_app_stable/stream.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(streamProvider);
    final Widget body = asyncValue.map(
      data: (data) => Text('data: ${data.value}'),
      loading: (_) => const CircularProgressIndicator(),
      error: (error) => Text(
        'Error: $error',
        style: TextStyle(color: Theme.of(context).colorScheme.error),
      ),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Stream')),
      body: Center(
        child: body,
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: StreamService.add,
        child: Icon(Icons.update),
      ),
    );
  }
}
