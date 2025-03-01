import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Count extends StatelessWidget {
  const Count({
    super.key,
    required this.data,
    required this.child,
  });

  final int data;
  final Widget child;

  static int of(BuildContext context) {
    final _InheritedCount? inheritedCount =
        context.dependOnInheritedWidgetOfExactType<_InheritedCount>();
    assert(inheritedCount != null, 'No Count found in context');
    return inheritedCount!.count;
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedCount(
      count: data,
      child: child,
    );
  }
}

class _InheritedCount extends InheritedWidget {
  const _InheritedCount({
    required this.count,
    required super.child,
  });

  final int count;

  @override
  bool updateShouldNotify(_InheritedCount oldWidget) {
    return oldWidget.count != count;
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Count(
        data: _count,
        child: MyHomePage(
          onPressed: () {
            setState(() {
              _count++;
            });
          },
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    UnmanagedRestorationScope;
    final count = Count.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$count',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onPressed,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
