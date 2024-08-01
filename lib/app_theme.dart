import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightPrimary = Color(0xffB7935F);
  static const Color darkPrimary = Color(0xff141A2E);
  static const Color white = Color(0xffF8F8F8);
  static const Color black = Color(0xff141A2E);
  static const Color gold = Color(0xffFACC1D);
  static ThemeData lightTheme = ThemeData(
      dividerColor: lightPrimary,
      iconTheme: IconThemeData(color: lightPrimary),
      textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xffB7935F)))),
      textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: black,
          ),
          titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: black,
          ),
          headlineMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: white,
          ),
          titleLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: black)),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: black),
              ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: lightPrimary,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: black,
          unselectedItemColor: white));

  static ThemeData darkTheme = ThemeData(
      dividerColor: gold,
      iconTheme: const IconThemeData(color: gold),
      textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xffB7935F)))),
      textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: white,
          ),
          titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: white,
          ),
          headlineMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: white,
          ),
          titleLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: gold)),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        foregroundColor: AppTheme.white,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color:white)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: gold,
          unselectedItemColor: white),
          switchTheme: SwitchThemeData(thumbColor: MaterialStatePropertyAll(Colors.white)));
}
