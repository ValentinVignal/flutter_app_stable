import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: true,
      home: Scaffold(
        body: PageView(
          children: [
            Column(
              children: <Widget>[
                const Text('Text1'),
                const Text('Text2'),
                TextButton(onPressed: () {}, child: Text('TextButton1')),
                const Text('Text3'),
                const Text('Text4'),
                TextButton(onPressed: () {}, child: Text('TextButton1')),
                const Text('Text5'),
                const Text('Text6'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
