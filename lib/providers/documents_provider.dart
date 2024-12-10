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

final documentTypeProvider = StateProvider.autoDispose<Set<DocumentType>>(
  (_) => DocumentType.values.toSet(),
);

final searchProvider = StateProvider.autoDispose<String>(
  (_) => '',
);

/// Provides the raw documents from API
final documentsProvider = StreamProvider.autoDispose<List<Document>>(
  (ref) async* {
    await Future<void>.delayed(const Duration(seconds: 1));

    print('fetch data');

    yield* Stream.periodic(const Duration(seconds: 1))
        .map((_) => [for (var i = 0; i < 10; i++) _generateDocument(i)]);
  },
);

class DocumentsFilter {
  const DocumentsFilter({
    required this.types,
    required this.search,
  });

  final Set<DocumentType> types;
  final String search;
}

final documentFilterProvider = Provider.autoDispose<DocumentsFilter>((ref) {
  return DocumentsFilter(
    types: ref.watch(documentTypeProvider),
    search: ref.watch(searchProvider),
  );
});

final filteredDocumentsProvider = Provider.autoDispose<List<Document>>((ref) {
  final filters = ref.watch(documentFilterProvider);
  final documents = ref.watch(documentsProvider).valueOrNull?.where((document) {
        return filters.types.contains(document.type) &&
            (filters.search.isEmpty ||
                document.name.toLowerCase().contains(
                      filters.search.toLowerCase(),
                    ));
      }).toList() ??
      const [];
  return documents;
});

final documentProvider = StreamProvider.autoDispose.family<Document, int>(
  (ref, id) async* {
    await Future<void>.delayed(const Duration(seconds: 1));

    yield* Stream.periodic(const Duration(seconds: 1))
        .map((_) => _generateDocument(id));
  },
);


/**
 * 
 *   documentsProvider     documentTypeProvider  searchProvider
 *           |                               |       |        
 *           |                               |       |   
 *           |                        documentFilterProvider
 *          |                               |       
 *           \                             |       
 *              \                      |       
 *              filteredDocumentsProvider
 */
