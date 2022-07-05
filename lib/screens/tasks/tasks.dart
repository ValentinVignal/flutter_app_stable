import 'package:flutter/material.dart';
import 'package:flutter_app_stable/screens/tasks/data.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index].name),
            onTap: () {},
          );
        },
      ),
    );
  }
}
