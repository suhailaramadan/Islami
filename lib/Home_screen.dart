import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_splash/app_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/";
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/images/default_bg.png",
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "إسلامي",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            items: [
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