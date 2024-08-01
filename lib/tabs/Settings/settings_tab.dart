
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_splash/app_theme.dart';
import 'package:islami_splash/tabs/Settings/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider=Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 50,left: 10),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Dark Mode",style: Theme.of(context).textTheme.headlineSmall,),
          Switch(
            value:settingsProvider.isDark,
            onChanged: (isDark){settingsProvider.changeThemeMode(isDark?ThemeMode.dark:ThemeMode.light);},
            activeTrackColor:AppTheme.gold,
            inactiveThumbColor:Colors.grey ,
            )
        ],),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Language",style: Theme.of(context).textTheme.headlineSmall,),
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                  dropdownColor: AppTheme.gold,
                  value: settingsProvider.Language,
                  borderRadius: BorderRadius.circular(25),
                  items:[
                    DropdownMenuItem(
                      value: "En",
                    child: Text("English")),
                    DropdownMenuItem(
                      value: "Ar",
                      child: Text("العربية"))]  ,
                  onChanged:(selectedLanguage){
                    if(selectedLanguage==null)return;
                    settingsProvider.changeLanguage(selectedLanguage);}),
            ),
            
          
          
        ],)
      ],),
    );
  }
}

 