import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Count extends ValueNotifier<int> {
  Count() : super(0);

  static Count of(BuildContext context) {
    final _InheritedCount? inheritedCount =
        context.dependOnInheritedWidgetOfExactType<_InheritedCount>();
    assert(inheritedCount != null, 'No Count found in context');
    return inheritedCount!.notifier!;
  }
}

class CountWidget extends StatefulWidget {
  const CountWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<CountWidget> createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  final _notifier = Count();

  @override
  void dispose() {
    _notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedCount(
      notifier: _notifier,
      child: widget.child,
    );
  }
}

class _InheritedCount extends InheritedNotifier<Count> {
  const _InheritedCount({
    required super.notifier,
    required super.child,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CountWidget(
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void _incrementCounter(BuildContext context) {
    final notifier = Count.of(context);
    notifier.value++;
  }

  @override
  Widget build(BuildContext context) {
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
              '${count.value}',
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
