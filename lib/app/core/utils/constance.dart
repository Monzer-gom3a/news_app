import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = const Color.fromARGB(255, 86, 68, 148);
  static Color white = Color.fromARGB(255, 252, 252, 252);
  static Color black = Color.fromARGB(255, 13, 13, 13);
  static Color greyBack = Color.fromARGB(255, 227, 227, 227);
  static Color greyText = Color.fromARGB(255, 101, 101, 101);
}

ThemeData themeData() {
  return ThemeData(
    textTheme: const TextTheme(
        titleSmall: TextStyle(
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w300,
            color: Color.fromARGB(255, 8, 125, 221)),
        titleMedium:
            TextStyle(fontFamily: 'Cairo', fontWeight: FontWeight.w600)),
    colorScheme: ColorScheme.light(primary: AppColors.black),
    useMaterial3: true,
  );
}

class CommonStrings {
  static String urlBase = 'https://hobby-back.onrender.com';
}
