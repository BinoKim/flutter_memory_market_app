

import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.amberAccent,
    brightness: Brightness.light, 
  ),
  dividerColor: Colors.black38,
  highlightColor: Colors.amberAccent,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
      backgroundColor: WidgetStatePropertyAll(Colors.amberAccent),
      foregroundColor: WidgetStatePropertyAll(Colors.white)
    ),
  ),
);

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.amberAccent,
    brightness: Brightness.dark, 
  ),
  dividerColor: Colors.white38,
  highlightColor: Colors.amberAccent,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
      backgroundColor: WidgetStatePropertyAll(Colors.amberAccent),
      foregroundColor: WidgetStatePropertyAll(Colors.black)
    ),
  )
);