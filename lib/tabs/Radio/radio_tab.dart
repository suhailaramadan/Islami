import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_splash/app_theme.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,children: [
      Image.asset("assets/images/images/radio_image.png"),
      SizedBox(height: 20,),
      Text("إذاعة القرآن الكريم",style: Theme.of(context).textTheme.headlineLarge,),
      SizedBox(height: 25,),
        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.skip_previous,size: 40,color: AppTheme.lightPrimary,),
            Icon(Icons.play_arrow_rounded,color: AppTheme.lightPrimary,size: 60,),
            Icon(Icons.skip_next,size: 40,color: AppTheme.lightPrimary,),
          ],
        ),
    
    ],);
  }
}