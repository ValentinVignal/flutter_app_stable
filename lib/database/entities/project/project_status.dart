import 'package:flutter/material.dart';

enum ProjectStatus {
  notStarted,
  started,
  completed,
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
