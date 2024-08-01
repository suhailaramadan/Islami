import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_splash/app_theme.dart';
import 'package:islami_splash/tabs/Hadeth/hadeth.dart';
import 'package:islami_splash/tabs/Hadeth/hadeth_details_screen.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

List<Hadeth> ahadeth = [];

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) loadHadethFile();
    return Column(
        children: [
          Image.asset(
            "assets/images/images/hadeth_logo.png",
            height: MediaQuery.of(context).size.height * 0.25,
          ), Container(width: double.infinity,
          decoration: BoxDecoration(
            border: Border.symmetric(
                horizontal: BorderSide(width: 3, color:Theme.of(context).dividerColor))),
          child:
          Text(
            "الأحاديث",
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),),
          SizedBox(height: 10,),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(
                  HadethDetailsScreen.routeName,
                  arguments: ahadeth[index]),
              child: Text(
                ahadeth[index].title,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
            itemCount: ahadeth.length,
          ))
        ],
    )
    ;
  }

  Future<void> loadHadethFile() async {
    String ahadethFileContant =
        await rootBundle.loadString("assets/images/files/ahadeth/ahadeth.txt");
    List<String> ahadethText = ahadethFileContant.split("#");
    ahadeth = ahadethText.map((hadethText) {
      List<String> hadethLines = hadethText.trim().split("\n");
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      List<String> contant = hadethLines;
      return Hadeth(contant: contant, title: title);
    }).toList();
    setState(() {});
  }
}
