import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: material.Center(
        child: Text('Flutter'),
      ),
    );
  }
}
