import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

final countProvider = StateProvider.autoDispose((ref) => 0);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        home: FirstPage(),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer(
              builder: (context, ref, child) {
                return Text(
                  'Count: ${ref.watch(countProvider)}',
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
              },
              child: const Text('Second page'),
            ),
          ],
        ),
      ),
      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          return FloatingActionButton(
            onPressed: () {
              ref.read(countProvider.notifier).state++;
            },
            child: child!,
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        countProvider,
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Consumer(
                builder: (context, ref, child) {
                  return Text(
                    'Count: ${ref.watch(countProvider)}',
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const FirstPage(),
                    ),
                    (_) => false,
                  );
                },
                child: const Text('First page'),
              ),
            ],
          ),
        ),
        floatingActionButton: Consumer(
          builder: (context, ref, child) {
            return FloatingActionButton(
              onPressed: () {
                ref.read(countProvider.notifier).state++;
              },
              child: child!,
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
