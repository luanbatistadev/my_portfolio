import 'package:flutter/material.dart';

class Themes {
  static final themes = ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: const Color.fromARGB(255, 255, 255, 255),
    scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
  
    appBarTheme: const AppBarTheme(
      color: Color.fromARGB(255, 7, 11, 48),
      elevation: 0,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: const Color.fromARGB(255, 27, 135, 230),
      secondary: const Color.fromARGB(255, 18, 18, 43),
      secondaryContainer: Colors.black,
      tertiary: Colors.grey,
      
    ),
  );
}
