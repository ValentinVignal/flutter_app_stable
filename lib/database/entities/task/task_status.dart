import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_status.g.dart';

@JsonEnum(alwaysCreate: true)
enum TaskStatus {
  open,
  inProgress,
  done;

  factory TaskStatus.fromName(String name) {
    return _$TaskStatusEnumMap.entries
        .firstWhere((entry) => entry.value == name)
        .key;
  }
}

extension TaskStatusX on TaskStatus {
  Color color(ThemeData theme) {
    switch (this) {
      case TaskStatus.open:
        return theme.colorScheme.error;
      case TaskStatus.inProgress:
        return theme.colorScheme.onSurface;
      case TaskStatus.done:
        return theme.colorScheme.onBackground;
    }
  }
}
