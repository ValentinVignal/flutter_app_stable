import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _gestureRecognizer =
      TapGestureRecognizer()
        ..onTap = () {
          print('Text tapped!');
        };

  @override
  void dispose() {
    _gestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RichText(
          text: TextSpan(
            style: const TextStyle(color: Colors.black),
            children: [
              TextSpan(text: 'Click me', recognizer: _gestureRecognizer),
              TextSpan(text: '\n'),
              TextSpan(
                children: [TextSpan(text: 'with nested ')],
                recognizer: _gestureRecognizer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
