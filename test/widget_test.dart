import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

final streamProvider = StreamProvider<int>((ref) async* {
  final completer = Completer<void>();
  final timer = Timer(const Duration(seconds: 1), () {
    completer.complete();
  });
  ref.onDispose(() {
    if (timer.isActive) {
      timer.cancel();
    }
    if (!completer.isCompleted) {
      completer.complete();
    }
  });
  await completer.future; // <- Remove this line to make the test passes.
  throw Error();
});

class MyWidget extends ConsumerWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(streamProvider);
    return const SizedBox();
  }
}

void main() {
  testWidgets('Test stream', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MyWidget(),
      ),
    );
    await tester.pump(); // <- Add Duration(seconds: 1) and it doesn't fail.
  });
}
