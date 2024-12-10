import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document.freezed.dart';

enum DocumentType {
  pdf,
  txt,
  png,
}

@freezed
class Document with _$Document {
  const factory Document({
    required int id,
    required String name,
    required DateTime updatedAt,
    required DocumentType type,
  }) = _Document;
}
