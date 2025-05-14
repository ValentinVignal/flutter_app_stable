import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  initialLocation: '/1',
  routes: [
    GoRoute(
      path: '/1',
      builder: (context, state) {
        return const Screen(id: '1');
      },
    ),
    GoRoute(
      path: '/2',
      builder: (context, state) {
        return const Screen(id: '2');
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router);
  }
}

class Screen extends StatefulWidget {
  const Screen({required this.id, super.key});

  final String id;

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen ${widget.id}')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Count: $_count'),
            TextButton(
              child: Text('This is screen ${widget.id}'),
              onPressed: () {
                switch (widget.id) {
                  case '1':
                    context.replace('/2');
                    break;
                  case '2':
                    context.replace('/1');
                    break;
                  default:
                    context.replace('/1');
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
