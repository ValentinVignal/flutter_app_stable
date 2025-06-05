import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        BuilderAddon(
          name: 'Disable Animations',
          builder: (context, child) {
            if (WidgetbookState.of(context).previewMode || true) {
              timeDilation = double.maxFinite;
              EditableText.debugDeterministicCursor = true;
            }
            return child;
          },
        ),
      ],
      directories: [
        WidgetbookUseCase(
          name: 'animation',
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: TextField()),
            );
          },
        ),
      ],
    );
  }
}
