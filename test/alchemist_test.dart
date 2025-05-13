import 'package:flutter/material.dart';

import 'package:alchemist/alchemist.dart';

void main() {
  for (var i = 0; i < 100; i++) {
    goldenTest(
      'Test $i',
      fileName: 'test',
      builder:
          () => GoldenTestGroup(
            children: [
              GoldenTestScenario(
                constraints: const BoxConstraints(
                  maxWidth: 300,
                  maxHeight: 300,
                ),
                name: 'golden test',
                child: MaterialApp(home: Scaffold(body: Text('Hello World!'))),
              ),
            ],
          ),
    );
  }
}
