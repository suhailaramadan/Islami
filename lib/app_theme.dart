import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightPrimary = Color(0xffB7935F);
  static const Color darkPrimary = Color(0xffFACC1D);
  static const Color white = Color(0xffF8F8F8);
  static const Color black = Color(0xff141A2E);
  static const Color gold = Color(0xffFACC1D);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:
          AppBarTheme(backgroundColor: Colors.transparent, centerTitle: true),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: lightPrimary,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: black,
          unselectedItemColor: white));
  static ThemeData darkTheme = ThemeData();
}
