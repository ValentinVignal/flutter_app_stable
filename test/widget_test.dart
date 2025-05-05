import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';

void main() {
  goldenTest(
    'description',
    fileName: 'file_name',
    builder:
        () => GoldenTestGroup(
          children: [
            GoldenTestScenario(name: 'scenario', child: const SizedBox()),
          ],
        ),
  );
}
