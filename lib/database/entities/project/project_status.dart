import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_status.g.dart';

@JsonEnum(alwaysCreate: true)
enum ProjectStatus {
  notStarted,
  started,
  completed;

  factory ProjectStatus.fromName(String name) {
    return _$ProjectStatusEnumMap.entries
        .firstWhere((entry) => entry.value == name)
        .key;
  }
}

extension ProjectStatusX on ProjectStatus {
  Color color(ThemeData theme) {
    switch (this) {
      case ProjectStatus.notStarted:
        return theme.colorScheme.primary;
      case ProjectStatus.started:
        return theme.colorScheme.secondary;
      case ProjectStatus.completed:
        return theme.colorScheme.tertiary;
    }
  }
}
