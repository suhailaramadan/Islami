import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_splash/app_theme.dart';
import 'package:islami_splash/tabs/Quran/sura_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTab extends StatefulWidget {
  QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

List<int> ayat=[
7
,286 
,200
,176
,120
,165
,206
,75
,129
,109 
,123
,111
,43
,52
,99
,128
,111
,110
,98
,135
,112
,78
,118
,64
,77
,227
,93
,88
,69
,60
,34
,30
,73
,54
,45
,83
,182
,88
,75
,85
,54
,53
,89
,59
,37
,35
,38
,29
,18
,45
,60
,49
,62
,55
,78
,96
,29
,22
,24
,13
,14
,11
,11
,18
,12
,12
,30
,52
,52
,44
,28
,28
,20
,56
,40
,31
,50
,40
,46
,42
,29
,19
,36
,25
,22
,17
,19,
26
,30,
20
,15
,21
,11
,8
,8
,19
,5
,8
,8
,11
,11
,8
,3
,9
,5
,4
,7
,3
,6
,3
,5
,4
,5
,6
];

  @override
  Widget build(BuildContext context) {
  //  loadSurahAyat();
    return Column(
      children: [
        Image.asset("assets/images/images/qur2an_screen_logo.png",
            height: MediaQuery.of(context).size.height * 0.25),
        Container(
          decoration: BoxDecoration(
            border: Border.symmetric(
                horizontal: BorderSide(width: 3, color:Theme.of(context).dividerColor)),
          ),
          child: IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  AppLocalizations.of(context)!.suraName,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                )),
                VerticalDivider(
                  width: 2,
                  color:Theme.of(context).dividerColor,
                  thickness: 3,
                ),
                Expanded(
                    child: Text(
                  AppLocalizations.of(context)!.ayatNumber,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                )),
              ],
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) => IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                    child:GestureDetector(
                        onTap: () {
                        Navigator.of(context).pushNamed(SuraScreen.routeName,
                        arguments:SuraDetailsArg(index: index, suraName: suraName[index]));
                        
                        },
                        child: Text(
                          suraName[index],
                          style: Theme.of(context).textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                        ))),
                VerticalDivider(
                  width: 2,
                  thickness: 3,
                  color:Theme.of(context).dividerColor,
                ),
                Expanded(
                    child: Text(
                  "${ayat[index]}",
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                )),
              ],
            ),
          ),
          itemCount: suraName.length,
        ))
      ],
    );
  }
}

class SuraDetailsArg{
String suraName;
int index;
SuraDetailsArg({required this.index,required this.suraName});
}
