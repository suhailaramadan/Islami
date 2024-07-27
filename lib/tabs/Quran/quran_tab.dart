import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_splash/app_theme.dart';
import 'package:islami_splash/tabs/Quran/sura_screen.dart';

class QuranTab extends StatelessWidget {
  QuranTab({super.key});
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/images/qur2an_screen_logo.png",
            height: MediaQuery.of(context).size.height * 0.25),
        Container(
          decoration: BoxDecoration(
            border: Border.symmetric(
                horizontal: BorderSide(width: 3, color: AppTheme.lightPrimary)),
          ),
          child: IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  "عدد الآيات",
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                )),
                VerticalDivider(
                  width: 2,
                  color: AppTheme.lightPrimary,
                  thickness: 3,
                ),
                Expanded(
                    child: Text(
                  "إسم السورة",
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
                    child: Text(
                  "256",
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                )),
                VerticalDivider(
                  width: 2,
                  thickness: 3,
                  color: AppTheme.lightPrimary,
                ),
                Expanded(
                    child:GestureDetector(
                        onTap: () {
                        Navigator.of(context).pushNamed(SuraScreen.routeName,
                        arguments:SuraDetailsArg(index: index, suraName: suraName[index]));
                        
                        },
                        child: Text(
                          suraName[index],
                          style: Theme.of(context).textTheme.titleMedium,
                          textAlign: TextAlign.center,
                        ))),
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