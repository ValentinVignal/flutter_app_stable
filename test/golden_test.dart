import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  for (var i = 0; i < 100; i++) {
    testWidgets('Test $i', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(home: Scaffold(body: Text('Hello World!'))),
      );

      await expectLater(
        find.byType(MaterialApp),
        matchesGoldenFile('golden/golden.test.png'),
      );
    });
  }
}
