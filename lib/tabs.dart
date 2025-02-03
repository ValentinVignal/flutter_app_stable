import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      tabs: [
        Tab(
          text: 'Parameters',
        ),
        Tab(
          text: 'Inherited',
        ),
      ],
    );
  }
}
