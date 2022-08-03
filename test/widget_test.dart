// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

const n = 1000;

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    super.initState();
    GetIt.instance.registerSingleton<Singleton>(Singleton());
  }

  @override
  void dispose() {
    GetIt.instance.unregister<Singleton>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

class Singleton {}

void main() {
  var duration = const Duration();
  var durationRunAsync = const Duration();

  for (var i = 0; i < n; i++) {
    testWidgets('test', (tester) async {
      final start = DateTime.now();
      await tester.pumpWidget(const MyWidget());
      final end = DateTime.now();
      duration += end.difference(start);
    });
  }

  for (var i = 0; i < n; i++) {
    testWidgets('test run async', (tester) async {
      final start = DateTime.now();
      await tester.runAsync(() async {
        await tester.pumpWidget(const MyWidget());
        await tester.idle();
        await tester.pump(const Duration(seconds: 1));
        await tester.pump();
      });
      final end = DateTime.now();
      durationRunAsync += end.difference(start);
    });
  }

  testWidgets('print', (tester) async {
    print('Total time: ${(duration + durationRunAsync).inMilliseconds}ms');
    print('Time test widget: ${duration.inMilliseconds}ms');
    print(
      'Time test widget run async: ${durationRunAsync.inMilliseconds}ms',
    );

    print(
      'run async is ${durationRunAsync.inMilliseconds / duration.inMilliseconds} slower',
    );
  });
}
