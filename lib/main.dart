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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Draggable(
              // data: Colors.yellow,
              feedback: Container(height: 100, width: 100, color: Colors.green),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellow.withOpacity(0.3),
              ),
            ),
            DragTarget(
              onWillAccept: (o) {
                return true;
              },
              onAccept: (o) {
                print("onAccept");
              },
              onLeave: (o) {
                print("onLeave");
              },
              builder: (context, candidateData, rejectedData) {
                return Container(height: 100, width: 100, color: Colors.blue);
              },
            ),
          ],
        ),
      ),
    );
  }
}
