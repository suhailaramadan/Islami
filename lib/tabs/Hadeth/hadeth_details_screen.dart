import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_splash/app_theme.dart';
import 'package:islami_splash/loading_indicator.dart';
import 'package:islami_splash/tabs/Hadeth/hadeth.dart';
import 'package:islami_splash/tabs/Hadeth/hadeth_tab.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName="hadeth";
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth=ModalRoute.of(context)!.settings.arguments as Hadeth;
    return  Container(
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
            title: Text(hadeth.title),),
            body: Container(
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * .06,
                horizontal: MediaQuery.of(context).size.width * .07),
            decoration: BoxDecoration(
                color: AppTheme.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child:hadeth.contant.isEmpty? LoadingIndicator(): 
            ListView.builder(
              itemBuilder: (_, index) => Text(
                hadeth.contant[index],
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              itemCount: hadeth.contant.length,
            ),
          ),
          )));
  }
}