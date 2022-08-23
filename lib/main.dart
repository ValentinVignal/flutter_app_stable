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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const MenuButton(
              text: 'No overridden theme',
            ),
            Theme(
              data: Theme.of(context).copyWith(primaryColor: Colors.red),
              child: const MenuButton(
                text: 'With overridden theme',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (_) {
        return [
          const PopupMenuItem<Never>(
            child: Menu(),
          ),
        ];
      },
      child: Text(text),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: AnimatedBuilder(
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
