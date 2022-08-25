import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final boolean = MediaQuery.of(context).size.width > 300;
    final color = boolean ? Colors.red : Colors.black;
    final double radius = boolean ? 8 : 4;
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
