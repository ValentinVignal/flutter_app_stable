import 'package:flutter/material.dart';
import 'package:flutter_app_stable/main.dart';
import 'package:flutter_app_stable/stream.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'It should update the UI when the stream updates',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: MyHomePage(),
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      StreamService.add();
      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsNothing);
      expect(find.text('Data: 0'), findsOneWidget);
    },
  );
}
