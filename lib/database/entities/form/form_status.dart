import 'package:flutter/material.dart';

enum FormStatus {
  draft,
  wip,
  closed,
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
