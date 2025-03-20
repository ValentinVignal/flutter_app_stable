import 'package:built_collection/built_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum DocumentType {
  pdf,
  doc,
  xls,
  ppt,
}

class Document {
  const Document({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.createdBy,
  });

  final int id;
  final String name;
  final String description;
  final DocumentType type;
  final int createdBy;
}

/// All the documents.
const _documents = [
  Document(
    id: 0,
    name: 'Document 1',
    description: 'This is the first document',
    type: DocumentType.pdf,
    createdBy: 0,
  ),
  Document(
    id: 1,
    name: 'Document 2',
    description: 'This is the second document',
    type: DocumentType.doc,
    createdBy: 1,
  ),
  Document(
    id: 2,
    name: 'Document 3',
    description: 'This is the third document',
    type: DocumentType.xls,
    createdBy: 2,
  ),
  Document(
    id: 3,
    name: 'Document 4',
    description: 'This is the fourth document',
    type: DocumentType.ppt,
    createdBy: 3,
  ),
  Document(
    id: 4,
    name: 'Document 5',
    description: 'This is the fifth document',
    type: DocumentType.pdf,
    createdBy: 1,
  ),
  Document(
    id: 5,
    name: 'Document 6',
    description: 'This is the sixth document',
    type: DocumentType.doc,
    createdBy: 0,
  ),
  Document(
    id: 6,
    name: 'Document 7',
    description: 'This is the seventh document',
    type: DocumentType.xls,
    createdBy: 2,
  ),
  Document(
    id: 7,
    name: 'Document 8',
    description: 'This is the eighth document',
    type: DocumentType.ppt,
    createdBy: 3,
  ),
  Document(
    id: 8,
    name: 'Document 9',
    description: 'This is the ninth document',
    type: DocumentType.pdf,
    createdBy: 1,
  ),
  Document(
    id: 9,
    name: 'Document 10',
    description: 'This is the tenth document',
    type: DocumentType.doc,
    createdBy: 0,
  )
];

final documentsProvider =
    FutureProvider.autoDispose<List<Document>>((ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return _documents;
});

final documentProvider =
    FutureProvider.autoDispose.family<Document, int>((ref, id) async {
  await Future.delayed(const Duration(seconds: 1));
  return _documents.firstWhere((user) => user.id == id);
});

final documentTypeFilterProvider =
    Provider.autoDispose<BuiltSet<DocumentType>>((ref) => BuiltSet());
final documentCreatedByFilterProvider =
    Provider.autoDispose<BuiltSet<int>>((ref) => BuiltSet());

final documentsFilteredProvider = FutureProvider.autoDispose<List<Document>>(
  (ref) async {
    final type = ref.watch(documentTypeFilterProvider);
    final createdBy = ref.watch(documentCreatedByFilterProvider);
    final documents = await ref.watch(documentsProvider.future);

    return documents.where((user) {
      if (type.isNotEmpty && !type.contains(user.type)) {
        return false;
      }
      if (createdBy.isNotEmpty && !createdBy.contains(user.createdBy)) {
        return false;
      }
      return true;
    }).toList();
  },
  dependencies: [
    documentTypeFilterProvider,
    documentCreatedByFilterProvider,
    documentsProvider
  ],
);
