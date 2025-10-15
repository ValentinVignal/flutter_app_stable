import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Builder(
          builder: (context) {
            final theme = Theme.of(context);
            final withGoogleFont = theme.copyWith(
              textTheme: theme.textTheme.copyWith(
                displayLarge: GoogleFonts.lato(
                  textStyle: theme.textTheme.displayLarge,
                ),
              ),
            );
            return Theme(
              data: withGoogleFont,
              child: Builder(
                builder: (context) {
                  return Center(
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
