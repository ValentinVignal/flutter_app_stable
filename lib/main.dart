import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      initialRoute: '?path=use_case',
      directories: [
        WidgetbookUseCase(
          name: 'use_case',
          builder: (context) {
            final theme = Theme.of(context);
            final withGoogleFont = theme.copyWith(
              textTheme: theme.textTheme.copyWith(
                displayLarge: GoogleFonts.lato(
                  textStyle: theme.textTheme.displayLarge,
                ),
              ),
            );
            return Theme(data: withGoogleFont, child: UseCase());
          },
        ),
        WidgetbookUseCase(
          name: 'other',
          builder: (context) {
            return SizedBox();
          },
        ),
      ],
    );
  }
}

class UseCase extends StatelessWidget {
  const UseCase({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ColoredBox(
      color: theme.scaffoldBackgroundColor,
      child: Center(
        child: IntrinsicWidth(
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                spacing: 8,
                children: [
                  Flexible(
                    child: Text(
                      'Option 1',
                      style: theme.textTheme.displayLarge,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
