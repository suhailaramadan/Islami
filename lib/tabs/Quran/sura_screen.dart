import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_splash/app_theme.dart';
import 'package:islami_splash/tabs/Quran/quran_tab.dart';

class SuraScreen extends StatefulWidget {
  static const String routeName = "sura";
  SuraScreen({super.key});

  @override
  State<SuraScreen> createState() => _SuraScreenState();
}

class _SuraScreenState extends State<SuraScreen> {
  List<String> ayat = [];

  late SuraDetailsArg args;

  @override
  Widget build(BuildContext context) {
  args =
        ModalRoute.of(context)!.settings.arguments as SuraDetailsArg;
        loadSuraFile();
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/images/default_bg.png",
              ),
              fit: BoxFit.fill)),
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.suraName),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * .06,
                horizontal: MediaQuery.of(context).size.width * .07),
            decoration: BoxDecoration(
                color: AppTheme.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child:ayat.isEmpty?Center(child: CircularProgressIndicator(color: AppTheme.lightPrimary,)): 
            ListView.builder(
              itemBuilder: (_, index) => Text(
                ayat[index],
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              itemCount: ayat.length,
            ),
          ),
        ),
      ),
    );
  }

Future<void> loadSuraFile() async {
  await Future.delayed(Duration(seconds: 1));
String sura= await rootBundle.loadString("assets/images/files/${args.index+1}.txt");
ayat=sura.split("\r\n");
setState(() {
  
});
} 
}