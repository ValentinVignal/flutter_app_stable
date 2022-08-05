import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({
    required this.id,
    Key? key,
  }) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text('Task $id'),
      ),
    );
  }
}
