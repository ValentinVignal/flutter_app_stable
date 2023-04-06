import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final a = Provider.autoDispose<String>(
  (ref) {
    return 'a0';
  },
  name: 'a',
);

final b = Provider.autoDispose<String>(
  (ref) {
    return 'b0';
  },
  name: 'b',
);

final c = Provider.autoDispose<String>(
  (ref) {
    return ref.watch(a) + ref.watch(b);
  },
  name: 'c',
  dependencies: [a, b],
);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: ProviderScope(
        overrides: [
          a.overrideWithValue('a1'),
        ],
        child: ProviderScope(
          overrides: [
            a.overrideWithValue('a2'),
          ],
          child: const MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends ConsumerStatefulWidget {
  const MyWidget({super.key});

  @override
  ConsumerState<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends ConsumerState<MyWidget> {
  var _show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(ref.watch(a)),
            // If you open, close and open again, you will see the error:
            //
            // The following assertion was thrown building Consumer(dirty, dependencies:
            // [UncontrolledProviderScope], state: _ConsumerState#652b3):
            // Tried to read c0:AutoDisposeProvider<String>#a27a4 from a place where one of its dependencies were
            // overridden but the provider is not.
            //
            // To fix this error, you can add "dependencies" to c0:AutoDisposeProvider<String>#a27a4 such that we
            // have:
            //
            // ```
            // final a = Provider(...);
            // final b = Provider((ref) => ref.watch(a), dependencies: [a]);
            // ```
            // 'package:riverpod/src/framework/container.dart':
            // Failed assertion: line 443 pos 17: 'targetElement.provider != targetElement.origin ||
            //                     dependencyElement ==
            //                         targetElement.container
            //                             .readProviderElement<Object?>(dependency)'
            //
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _show = !_show;
                });
              },
              child: const Text('Toggle'),
            ),
            if (_show) ...[
              ProviderScope(
                child: Consumer(
                  builder: (context, ref, child) {
                    return Text(ref.watch(c));
                  },
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
