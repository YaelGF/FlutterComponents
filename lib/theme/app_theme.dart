import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color.fromARGB(255, 9, 164, 202);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primaryColor,
      appBarTheme:
          const AppBarTheme(color: primaryColor, elevation: 0, centerTitle: true),
      
      // TextButton Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor, textStyle: const TextStyle(fontSize: 16),
        ),),

      // FloatingActionButton Theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        elevation: 0,
      ),

      // ElevatedButton Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          shape: const StadiumBorder(),
          elevation: 5,
          shadowColor: primaryColor.withOpacity(0.3),
          textStyle: const TextStyle(fontSize: 20),
        ),
      ),

    );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primaryColor,
      appBarTheme:
          const AppBarTheme(color: primaryColor, elevation: 0, centerTitle: true),
      scaffoldBackgroundColor: Colors.black
    );
}
