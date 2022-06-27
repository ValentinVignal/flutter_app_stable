import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final themeNotifier = ValueNotifier<ThemeMode>(ThemeMode.system);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: themeNotifier,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          home: child,
          darkTheme: ThemeData.dark(),
          themeMode: themeNotifier.value,
        );
      },
      child: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.red,
              ),
              child: Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => const Dialog(),
                      );
                    },
                    child: const Text('Show dialog with overridden theme'),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const Dialog(),
                );
              },
              child: const Text('Show dialog'),
            ),
          ],
        ),
      ),
    );
  }
}

class Dialog extends StatelessWidget {
  const Dialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: AnimatedBuilder(
        animation: themeNotifier,
        builder: (context, _) {
          return ToggleButtons(
            children:
                ThemeMode.values.map((value) => Text(value.name)).toList(),
            isSelected: ThemeMode.values
                .map((value) => value == themeNotifier.value)
                .toList(),
            onPressed: (index) {
              themeNotifier.value = ThemeMode.values[index];
            },
          );
        },
      ),
    );
  }
}
