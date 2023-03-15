import 'package:flutter/material.dart';
import 'package:widgets_generys/ui/theme/colors_app.dart';

final themadataApp = ThemeData(
  backgroundColor: colorBlueA2,
  scaffoldBackgroundColor: colorBlueA2,
  appBarTheme: const AppBarTheme(
    backgroundColor: colorBlueA1,
    elevation: 0,
    centerTitle: true,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: colorBlueA3,
      minimumSize: const Size(250, 50),
    ),
  ),
);
