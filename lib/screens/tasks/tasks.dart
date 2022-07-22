import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const TaskList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Database.instance.taskDao.insert();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final _tasksStream = Database.instance.taskDao.watch();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<TaskData>>(
      stream: _tasksStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: ErrorWidget(snapshot.error!));
        } else if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            final task = snapshot.data![index];
            return ListTile(
              title: Text(task.name),
              subtitle: Text(task.id.toString()),
              onTap: () {
                final page = TaskRoute(id: task.id.toString());
                router.push(page.location, extra: page);
              },
            );
          },
        );
      },
    );
  }
}
