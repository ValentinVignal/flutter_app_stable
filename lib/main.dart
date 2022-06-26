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
          darkTheme: ThemeData.dark(),
          themeMode: themeNotifier.value,
          home: child,
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
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                      child: Text('Show dialog'), value: 'dialog'),
                ];
              },
              child: const Text('Menu'),
              onSelected: (value) {
                if (value == 'dialog') {
                  showDialog(
                    context: context,
                    builder: (context) => const Dialog(),
                  );
                }
              },
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
