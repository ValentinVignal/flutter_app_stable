import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 256,
          height: double.infinity,
          child: MyWidget(),
        ),
      ),
    );
  }
}

const offset = 50.0;

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: offset),
          child: Secondary(),
        ),
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          width: expanded ? 256 : offset,
          child: ClipRect(
            child: OverflowBox(
              alignment: Alignment.centerLeft,
              maxWidth: 256,
              child: MouseRegion(
                onEnter: (_) => setState(() => expanded = true),
                onExit: (_) => setState(() => expanded = false),
                child: const Primary(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

void voidCallback() {}

class Primary extends StatelessWidget {
  const Primary({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Add'),
            onTap: voidCallback,
          ),
          ListTile(
            leading: Icon(Icons.remove),
            title: Text('Remove'),
            onTap: voidCallback,
          ),
        ],
      ),
    );
  }
}

class Secondary extends StatelessWidget {
  const Secondary({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ListTile(
            leading: Icon(Icons.route_sharp),
            title: Text('Route'),
            onTap: voidCallback,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: voidCallback,
          ),
        ],
      ),
    );
  }
}
