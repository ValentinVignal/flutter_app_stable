import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: PopupMenuButton(
            // offset: const Offset(1, 0),
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                child: Text('Item'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
