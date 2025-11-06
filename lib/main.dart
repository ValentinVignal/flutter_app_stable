import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Center(child: MyEditor())));
  }
}

class MyEditor extends StatefulWidget {
  const MyEditor({super.key});

  @override
  State<MyEditor> createState() => _MyEditorState();
}

class _MyEditorState extends State<MyEditor> {
  final _controller = MyTextEditingController(
    'This is a simple example of indexed words.',
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(controller: _controller);
  }
}

class MyTextEditingController extends TextEditingController {
  MyTextEditingController(String text) : super(text: text);

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    bool withComposing = false,
  }) {
    // One every 2 words is using a different style.

    final words = text.split(' ');
    final theme = Theme.of(context);
    return TextSpan(
      style: style,
      children: [
        for (final (index, word) in words.indexed)
          TextSpan(
            text:
                word +
                (index < words.length - 1
                    ? ' '
                    : (text.endsWith(' ') ? ' ' : '')),
            style:
                index.isEven
                    ? theme.textTheme.headlineLarge
                    : theme.textTheme.bodySmall,
          ),
      ],
    );
  }
}
