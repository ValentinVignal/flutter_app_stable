import 'package:flutter/material.dart';
import 'package:flutter_app_stable/const.dart';
import 'package:flutter_app_stable/inherited.dart';
import 'package:flutter_app_stable/padding_vs_size.dart';
import 'package:flutter_app_stable/parameters.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(
                      text: 'Parameters',
                    ),
                    Tab(
                      text: 'Inherited',
                    ),
                    Tab(
                      text: 'Const',
                    ),
                    Tab(
                      text: 'Padding vs Size',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Parameters(),
                      Inherited(),
                      Const(),
                      PaddingVsSize()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
