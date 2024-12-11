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
      theme: ThemeData().copyWith(extensions: const [
        MyThemeExtension(myColor: Colors.red),
      ]),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final myColor = Theme.of(context).extension<MyThemeExtension>()!.myColor;
    print('mnyColor in MyWidget: $myColor');
    return Scaffold(
      body: Center(
        child: Autocomplete<String>(
          optionsBuilder: (_) =>
              const ['Option1', 'Option2', 'Option3', 'Option4', 'Option5'],
          optionsViewBuilder: (context, onSelected, options) {
            final myColor =
                Theme.of(context).extension<MyThemeExtension>()!.myColor;
            print('mnyColor in optionsViewBuilder: $myColor');
            return Material(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: options.length,
                itemBuilder: (context, index) {
                  final option = options.elementAt(index);
                  return ListTile(
                    title: Text(option),
                    onTap: () {
                      onSelected(option);
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class MyThemeExtension extends ThemeExtension<MyThemeExtension> {
  const MyThemeExtension({
    required this.myColor,
  });

  final Color myColor;

  @override
  ThemeExtension<MyThemeExtension> copyWith({Color? myColor}) {
    return MyThemeExtension(
      myColor: myColor ?? this.myColor,
    );
  }

  @override
  ThemeExtension<MyThemeExtension> lerp(
      covariant ThemeExtension<MyThemeExtension>? other, double t) {
    if (other == null) {
      return this;
    }
    if (other is! MyThemeExtension) {
      return this;
    }
    return MyThemeExtension(
      myColor: Color.lerp(myColor, other.myColor, t)!,
    );
  }
}
