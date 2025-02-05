import 'package:flutter/material.dart';

ThemeData _buildTheme(Brightness brightness) {
  return ThemeData(
    brightness: brightness,
    colorScheme: ColorScheme.fromSeed(
      brightness: brightness,
      seedColor: const Color(0xffed1b2d),
      surfaceTint: Colors.transparent,
      surface: Colors.white,
      background: const Color(0xfffcfcfc),
      primaryContainer: const Color(0xffed1b2d),
      secondaryContainer: const Color(0xff00385c),
      onSecondaryContainer: Colors.white,
    ),
    dividerTheme: const DividerThemeData(
      color: Color(0xffe4e4e7),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Color(0xfff2f2f2),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 40,
        color: Color(0xff4b5563),
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 40,
        color: Color(0xff71717a),
      ),
      bodyLarge: TextStyle(
        fontSize: 24,
        color: Color(0xff000000),
      ),
      bodyMedium: TextStyle(
        color: Color(0xff18181b),
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w400,
        color: Color(0xff4b5563),
        fontSize: 40,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w400,
        color: Color(0xff18181b),
        fontSize: 32,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color(0xff374151),
        fontSize: 16,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.normal,
        color: Color(0xff4b5563),
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w400,
        color: Color(0xff71717a),
      ),
    ),
  );
}

final lightTheme = _buildTheme(Brightness.light);
final darkTheme = _buildTheme(Brightness.dark);

const decreaseColor = Color(0xffce1313);
const increaseColor = Color(0xff16a34a);
