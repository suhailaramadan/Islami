import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider with ChangeNotifier{
  ThemeMode themeMode=ThemeMode.dark;
  String Language="ar";

  bool get isDark=>themeMode==ThemeMode.dark;
  String get backgroundImagePath=>
  "assets/images/images/${isDark?"dark_bg":"default_bg"}.png";
  void changeThemeMode (ThemeMode selectedThemeMode){
    themeMode=selectedThemeMode;
    setThemeToCash(themeMode);
    notifyListeners();
  }
  void changeLanguage(String selectedLanguage){
    Language=selectedLanguage;
    setLangToCash(selectedLanguage);
    notifyListeners();

  }
Future setThemeToCash(ThemeMode themeMode)async{
    final prefs=await SharedPreferences.getInstance();

    String themeName= themeMode==ThemeMode.light?"Light":"Dark";
    await prefs.setString("theme",themeName);
  }
Future setLangToCash(String lang)async{
  final prefs=await SharedPreferences.getInstance();
  await prefs.setString("language",lang);

}
  Future loadTheme()async{
  final prefs=await SharedPreferences.getInstance();
  String? themeName=prefs.getString("theme");
  if(themeName!=null){
  themeMode=themeName=="Light"?ThemeMode.light:ThemeMode.dark;
  notifyListeners();
}}
  Future loadLang()async{
  final prefs=await SharedPreferences.getInstance();
  String lang=prefs.getString("language")??"ar";
  notifyListeners();

  
}

}