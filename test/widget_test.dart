import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app_stable/main.dart';

void main() {
  testWidgets('Render the text field', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(TextField), findsOne);
  });
}
