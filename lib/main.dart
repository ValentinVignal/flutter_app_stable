import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          // height: 16,
          // width: 16,
          child: ColoredBox(
            color: Colors.green,
            child: Checkbox(
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
