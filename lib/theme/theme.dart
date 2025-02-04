import 'package:flutter/material.dart';

ThemeData _buildTheme(Brightness brightness) {
  return ThemeData(
    brightness: brightness,
    colorScheme: ColorScheme.fromSeed(
      brightness: brightness,
      seedColor: const Color(0xffed1b2d),
    ),
  );
}

final lightTheme = _buildTheme(Brightness.light);
final darkTheme = _buildTheme(Brightness.dark);
