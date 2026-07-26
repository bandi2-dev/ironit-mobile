// App theme configuration
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_typography.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: AppColors.lightColorScheme,
    textTheme: AppTypography.textTheme,
    scaffoldBackgroundColor: AppColors.lightColorScheme.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightColorScheme.primary,
      foregroundColor: AppColors.lightColorScheme.onPrimary,
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.lightColorScheme.primary,
        foregroundColor: AppColors.lightColorScheme.onPrimary,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: AppColors.darkColorScheme,
    textTheme: AppTypography.textTheme,
    scaffoldBackgroundColor: AppColors.darkColorScheme.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkColorScheme.primary,
      foregroundColor: AppColors.darkColorScheme.onPrimary,
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkColorScheme.primary,
        foregroundColor: AppColors.darkColorScheme.onPrimary,
      ),
    ),
  );
}
