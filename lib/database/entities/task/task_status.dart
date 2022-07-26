import 'package:flutter/material.dart';

enum TaskStatus {
  open,
  inProgress,
  done,
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
