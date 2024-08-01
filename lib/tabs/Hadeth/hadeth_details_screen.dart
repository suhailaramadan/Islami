import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_splash/app_theme.dart';
import 'package:islami_splash/loading_indicator.dart';
import 'package:islami_splash/tabs/Hadeth/hadeth.dart';
import 'package:islami_splash/tabs/Hadeth/hadeth_tab.dart';
import 'package:islami_splash/tabs/Settings/settings_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName="hadeth";
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
  SettingsProvider settingsProvider=Provider.of<SettingsProvider>(context);
    Hadeth hadeth=ModalRoute.of(context)!.settings.arguments as Hadeth;
    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                settingsProvider.backgroundImagePath
              ),
              fit: BoxFit.fill)),
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Scaffold(
          appBar: AppBar(
            title: Text(hadeth.title),),
            body: Container(
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * .06,
                horizontal: MediaQuery.of(context).size.width * .07),
                
            decoration: BoxDecoration(
                color:settingsProvider.isDark?AppTheme.black: AppTheme.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child:hadeth.contant.isEmpty? LoadingIndicator(): 
            Padding(
              padding: const EdgeInsets.all( 18.0),
              child: ListView.builder(
                itemBuilder: (_, index) => Text(
                  hadeth.contant[index],
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                itemCount: hadeth.contant.length,
              ),
            ),
          ),
          )));
  }
}