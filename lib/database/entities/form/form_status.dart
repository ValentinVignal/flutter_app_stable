import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'form_status.g.dart';

@JsonEnum(alwaysCreate: true)
enum FormStatus {
  draft,
  wip,
  closed;

  factory FormStatus.fromName(String name) {
    return _$FormStatusEnumMap.entries
        .firstWhere((entry) => entry.value == name)
        .key;
  }
}

extension FormStatusX on FormStatus {
  Color color(ThemeData theme) {
    switch (this) {
      case FormStatus.draft:
        return theme.colorScheme.error;
      case FormStatus.wip:
        return theme.colorScheme.secondary;
      case FormStatus.closed:
        return theme.colorScheme.primary;
    }
  }
}
