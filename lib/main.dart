import 'package:flutter/material.dart';
import 'package:islami_splash/Home_screen.dart';
import 'package:islami_splash/app_theme.dart';
import 'package:islami_splash/tabs/Quran/sura_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        SuraScreen.routeName:(context) => SuraScreen()
      },
      theme:AppTheme.lightTheme,
      darkTheme:AppTheme.darkTheme,
      themeMode:ThemeMode.light,
    );
  }
}
