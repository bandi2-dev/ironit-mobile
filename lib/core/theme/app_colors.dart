// App color palette
import 'package:flutter/material.dart';

class AppColors {
  // Material 3 ColorSchemes
  static const ColorScheme lightColorScheme = ColorScheme.light(
    primary: Color(0xFF6200EE),
    secondary: Color(0xFF03DAC6),
    tertiary: Color(0xFF018786),
    surface: Color(0xFFFFFBFE),
    error: Color(0xFFB3261E),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFF000000),
    onTertiary: Color(0xFFFFFFFF),
    onSurface: Color(0xFF1C1B1F),
    onError: Color(0xFFFFFFFF),
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme.dark(
    primary: Color(0xFFBB86FC),
    secondary: Color(0xFF03DAC6),
    tertiary: Color(0xFF80CBC4),
    surface: Color(0xFF1C1B1F),
    error: Color(0xFFF2B8B5),
    onPrimary: Color(0xFF000000),
    onSecondary: Color(0xFF000000),
    onTertiary: Color(0xFF000000),
    onSurface: Color(0xFFE6E1E5),
    onError: Color(0xFF000000),
    brightness: Brightness.dark,
  );
}
