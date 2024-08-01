import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_splash/app_theme.dart';
import 'package:islami_splash/tabs/Hadeth/hadeth_tab.dart';
import 'package:islami_splash/tabs/Quran/quran_tab.dart';
import 'package:islami_splash/tabs/Radio/radio_tab.dart';
import 'package:islami_splash/tabs/Sebha/sebha_tab.dart';
import 'package:islami_splash/tabs/Settings/settings_provider.dart';
import 'package:islami_splash/tabs/Settings/settings_tab.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = "/";
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
List<Widget>tabs=[
QuranTab(),
HadethTab(),
SebhaTab(),
RadioTab(),
SettingsTab()
];
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider=Provider.of(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                settingsProvider.backgroundImagePath
               // Provider.of(context).backgroundImagePath
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "إسلامي",
          ),
        ),
      body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  label: "Quran",
                  icon: ImageIcon(
                      AssetImage("assets/images/images/icon_quran.png"))),
              BottomNavigationBarItem(
                  label: "Hadeth",
                  icon: ImageIcon(
                      AssetImage("assets/images/images/icon_hadeth.png"))),
              BottomNavigationBarItem(
                  label: "Sebha",
                  icon: ImageIcon(
                      AssetImage("assets/images/images/icon_sebha.png"))),
              BottomNavigationBarItem(
                  label: "Radio",
                  icon: ImageIcon(
                      AssetImage("assets/images/images/icon_radio.png"))),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ]),
      ),
    );
  }


}