import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

final myProvider = Provider.autoDispose<String>((ref) {
  return '';
});

final myStateProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});

final myOtherProvider = Provider.autoDispose<String>(
  (ref) {
    return ref.watch(myProvider);
  },
  dependencies: [myProvider],
);

final myOtherStateProvider = StateProvider.autoDispose<String>(
  (ref) {
    return ref.watch(myStateProvider);
  },
  dependencies: [myStateProvider],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        myProvider,
        myStateProvider,
      ],
      child: Scaffold(
        body: Center(
          child: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return ProviderScope(
                          overrides: [
                            myProvider,
                            // myStateProvider,
                          ],
                          child: const MyDialog(),
                        );
                      });
                },
                child: const Text('Dialog'),
              );
            },
          ),
        ),
      ),
    );
  }
}

class MyDialog extends ConsumerWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      content: ElevatedButton(
        onPressed: () {
          // ref.read(myStateProvider.notifier).state = 'Hello';
          ref.read(myOtherStateProvider.notifier).state = 'Hello';
          ref.read(myOtherProvider);
          Navigator.of(context).pop();
        },
        child: const Text('Close'),
      ),
    );
  }
}
