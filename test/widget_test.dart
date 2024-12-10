import 'package:flutter/material.dart';
import 'package:flutter_app_stable/data/document.dart';
import 'package:flutter_app_stable/main.dart';
import 'package:flutter_app_stable/providers/documents_provider.dart';
import 'package:flutter_app_stable/screens/documents.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          documentsProvider.overrideWith(
            (ref) => Stream.value([
              Document(
                id: 0,
                name: 'Document 0',
                updatedAt: DateTime.now(),
                type: DocumentType.pdf,
              ),
              Document(
                id: 1,
                name: 'Document 1',
                updatedAt: DateTime.now(),
                type: DocumentType.txt,
              ),
            ]),
          ),
        ],
        child: const MyApp(),
      ),
    );
    await tester.pump();

    expect(find.byType(DocumentsScreen), findsOne);

    expect(find.text('Document 0 .pdf'), findsOneWidget);
    expect(find.text('Document 1 .txt'), findsOneWidget);

    await expectLater(
      find.byType(MaterialApp),
      matchesGoldenFile('golden/widget.test.0.png'),
    );

    await tester.tap(find.text('pdf'));
    await tester.pump();

    await expectLater(
      find.byType(MaterialApp),
      matchesGoldenFile('golden/widget.test.1.png'),
    );

    expect(find.text('Document 0 .pdf'), findsNothing);
    expect(find.text('Document 1 .txt'), findsOneWidget);

    await tester.tap(find.text('pdf'));
    await tester.pump();

    expect(find.text('Document 0 .pdf'), findsOneWidget);
    expect(find.text('Document 1 .txt'), findsOneWidget);

    await tester.enterText(find.byType(TextFormField), '0');
    await tester.pump();

    expect(find.text('Document 0 .pdf'), findsOneWidget);
    expect(find.text('Document 1 .txt'), findsNothing);
  });
}
