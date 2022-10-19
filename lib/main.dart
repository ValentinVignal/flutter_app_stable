import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.5,
              child: RichTextEditor(),
            ),
          ),
        ),
      ),
    );
  }
}

class _TextEditingController extends TextEditingController {
  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    final children = <InlineSpan>[];
    final entries = text.split(' ').asMap().entries;
    for (final entry in entries) {
      if (entry.value.isNotEmpty) {
        if (entry.key < entries.length - 1) {
          children.add(WidgetSpan(
            child: Chip(
              label: Text(entry.value),
              onDeleted: () {
                text = text.split(' ').removeAt(entry.key);
              },
            ),
          ));
        } else {
          children.add(TextSpan(
            text: entry.value,
            style: const TextStyle(color: Colors.black),
          ));
        }
      }
      children.add(const TextSpan(text: ' '));
    }

    return TextSpan(
      children: children,
      style: const TextStyle(color: Colors.black),
    );
  }
}

class RichTextEditor extends StatefulWidget {
  const RichTextEditor({super.key});

  @override
  State<RichTextEditor> createState() => _RichTextEditorState();
}

class _RichTextEditorState extends State<RichTextEditor> {
  final controller = _TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: null,
    );
  }
}
