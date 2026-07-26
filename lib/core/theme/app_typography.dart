// App typography system
import 'package:flutter/material.dart';

class AppTypography {
  static const TextStyle headline1 = TextStyle(
    fontSize: 96.0,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  );

  static const TextStyle headline2 = TextStyle(
    fontSize: 60.0,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  );

  static const TextStyle headline3 = TextStyle(
    fontSize: 48.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.0,
  );

  static const TextStyle headline4 = TextStyle(
    fontSize: 34.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );

  static const TextStyle headline5 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.0,
  );

  static const TextStyle headline6 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  );

  static const TextStyle subtitle1 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
  );

  static const TextStyle subtitle2 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );

  static const TextStyle bodyText1 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  );

  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );

  static const TextStyle button = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  );

  static const TextStyle overline = TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  );

  static const TextTheme textTheme = TextTheme(
    displayLarge: headline1,
    displayMedium: headline2,
    displaySmall: headline3,
    headlineMedium: headline4,
    headlineSmall: headline5,
    titleLarge: headline6,
    titleMedium: subtitle1,
    titleSmall: subtitle2,
    bodyLarge: bodyText1,
    bodyMedium: bodyText2,
    labelLarge: button,
    bodySmall: caption,
    labelSmall: overline,
  );
}
