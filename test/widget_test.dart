import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: TextFormField(
            initialValue: 'value',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(MaterialApp),
      matchesGoldenFile('golden/widget.test.png'),
    );
  });

  goldenTest(
    'test',
    fileName: 'file_name',
    builder: () {
      return GoldenTestScenario(
        constraints: BoxConstraints.tight(Size.square(300)),
        name: 'test',
        child: TextFormField(
          initialValue: 'value',
          style: TextStyle(color: Colors.red),
        ),
      );
    },
  );
}
