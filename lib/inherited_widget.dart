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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Count(
        data: 0,
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void _incrementCounter(BuildContext context) {
    final count = Count.of(context);
    // Cannot change
  }

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
        onPressed: () => _incrementCounter(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
