import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          shrinkWrap: true, // <- Remove shrinkWrap and the issue goes away.
          itemCount: 10,
          itemBuilder: (context, index) => ListItem(
            index: index,
            parent: true,
          ),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    required this.index,
    required this.parent,
    Key? key,
  }) : super(key: key);

  final int index;
  final bool parent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: parent ? 500 : 100,
      child: Card(
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Text('Item $index'),
              ),
            ),
            if (parent)
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => ListItem(
                    index: index,
                    parent: false,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
