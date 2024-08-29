import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_splash/Home_screen.dart';
import 'package:islami_splash/app_theme.dart';
import 'package:islami_splash/tabs/Hadeth/hadeth_details_screen.dart';
import 'package:islami_splash/tabs/Quran/sura_screen.dart';
import 'package:islami_splash/tabs/Settings/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main(){
  runApp(ChangeNotifierProvider(
      create: (BuildContext context)=>SettingsProvider()..loadTheme()..loadLang(),
    
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider=Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraScreen.routeName: (context) => SuraScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen()
      },
      
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode:settingsProvider.themeMode,

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales ,
      locale:Locale(settingsProvider.Language)
    );
  }
}
