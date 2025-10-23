import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Center(child: MyWidget())));
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  static const _options = ['apple', 'banana', 'cherry', 'date', 'elderberry'];

  String? _selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        Text('Selected: ${_selected ?? "none"}'),
        Autocomplete<String>(
          initialValue: TextEditingValue(text: _selected ?? ''),
          optionsBuilder: (TextEditingValue textEditingValue) async {
            await Future.delayed(const Duration(seconds: 3));
            if (textEditingValue.text == '') {
              return const Iterable<String>.empty();
            }
            return _options.where((String option) {
              return option.contains(textEditingValue.text.toLowerCase());
            });
          },
          onSelected: (String selection) {
            setState(() {
              _selected = selection;
            });
          },
        ),
      ],
    );
  }
}
