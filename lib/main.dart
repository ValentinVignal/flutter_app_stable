import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              child: FocusTraversalGroup(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(label: Text('1')),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(label: Text('2')),
                    ),
                    const _Field(
                      decoration: InputDecoration(label: Text('3')),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(label: Text('4')),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(label: Text('5')),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: FocusTraversalGroup(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(label: Text('6')),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(label: Text('7')),
                    ),
                    const _Field(
                      decoration: InputDecoration(label: Text('8')),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(label: Text('9')),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(label: Text('10')),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Field extends StatefulWidget {
  const _Field({
    this.decoration,
  });

  final InputDecoration? decoration;

  @override
  State<_Field> createState() => __FieldState();
}

class __FieldState extends State<_Field> {
  final focusNodeText = FocusNode();
  final focusNodeButton = FocusNode();

  @override
  void dispose() {
    focusNodeText.dispose();
    focusNodeButton.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FocusTraversalGroup(
      child: Stack(
        children: [
          TextFormField(
            decoration: widget.decoration,
            focusNode: focusNodeText,
          ),
          Positioned(
            right: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  focusNode: focusNodeButton,
                  icon: const Icon(Icons.skip_next),
                  onPressed: () {
                    focusNodeButton.nextFocus();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
