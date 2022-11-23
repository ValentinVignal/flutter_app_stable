import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class Todo {
  const Todo({
    required this.id,
    required this.description,
  });

  factory Todo.fromIndex(int index) {
    return Todo(
      id: index,
      description: 'Todo $index',
    );
  }

  final int id;
  final String description;
}

final router = GoRouter(
  initialLocation: '/todos',
  routes: [
    GoRoute(
      path: '/todos',
      builder: (_, __) => const TodosScreen(),
      routes: [
        GoRoute(
            path: ':id',
            builder: (_, state) {
              final uri = Uri.parse(state.location);
              final id = int.parse(uri.pathSegments.last);
              return TodoScreen(id: id);
            }),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text(Todo.fromIndex(index).description),
          onTap: () => context.go('/todos/$index'),
        ),
      ),
    );
  }
}

class TodoScreen extends StatefulWidget {
  const TodoScreen({
    required this.id,
    super.key,
  });

  final int id;

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  late final DateTime now;
  @override
  void initState() {
    super.initState();
    now = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    final todo = Todo.fromIndex(widget.id);
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo ${todo.id}'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              router.replace('/todos/${widget.id - 1}');
            },
            icon: const Icon(Icons.arrow_back),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Todo ${todo.id}: ${todo.description}'),
                  Text('Now: $now')
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              router.replace('/todos/${widget.id + 1}');
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
