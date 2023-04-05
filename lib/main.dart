import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: const BorderSide(color: Colors.white),
            padding: const EdgeInsets.all(8),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            padding: const EdgeInsets.all(32),
          ),
        ),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _highlighted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedButton(
          highlighted: _highlighted,
          onPressed: () {
            setState(() {
              _highlighted = !_highlighted;
            });
          },
          child: const Text('Button'),
        ),
      ),
    );
  }
}

class AnimatedButton extends StatelessWidget {
  const AnimatedButton({
    required this.child,
    required this.highlighted,
    required this.onPressed,
    super.key,
  });

  final Widget child;
  final bool highlighted;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedTheme(
      data: theme.copyWith(
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: highlighted
              ? theme.elevatedButtonTheme.style
              : theme.outlinedButtonTheme.style,
        ),
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
