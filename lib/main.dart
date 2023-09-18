import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ColoredBox(
          color: Theme.of(context).colorScheme.secondaryContainer,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return SizeTransition(
                crossAxisSizeFactor: 1,
                sizeFactor: animation,
                axis: Axis.vertical,
                child: child,
              );
            },
            child: _visible
                ? ColoredBox(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    child: const SizedBox(
                      height: 200,
                      width: 200,
                      child: Center(
                        child: Text('Hello World'),
                      ),
                    ),
                  )
                : const SizedBox(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
