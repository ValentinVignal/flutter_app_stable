import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/document.dart';

Document _generateDocument(int id) {
  return Document(
    id: id,
    name: 'Document $id',
    updatedAt: DateTime.now().subtract(Duration(minutes: id)),
    type: DocumentType.values[id % DocumentType.values.length],
  );
}

final documentsProvider = StreamProvider.autoDispose<List<Document>>(
  (ref) async* {
    await Future<void>.delayed(const Duration(seconds: 1));

    yield* Stream.periodic(const Duration(seconds: 1)).map(
      (_) => [for (var i = 0; i < 10; i++) _generateDocument(i)],
    );
  },
);

final documentProvider = StreamProvider.autoDispose.family<Document, int>(
  (ref, id) async* {
    await Future<void>.delayed(const Duration(seconds: 1));

    yield* Stream.periodic(const Duration(seconds: 1))
        .map((_) => _generateDocument(id));
  },
);
