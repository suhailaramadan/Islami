import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_splash/app_theme.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});
  int digit = 0;
  int index = 0;
  double angle = 0;
  List<String> tsbeh = [
    "سبحان الله",
    "الحمدلله",
    "الله أكبر",
        "لا اله الا الله",
  ];
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Positioned(
          top: 75,
          child: GestureDetector(
              onTap: routatSebha,
              child: AnimatedRotation(
                  duration: Duration(milliseconds: 300),
                  turns: widget.angle / (2 * 3.14),
                  child: Image.asset(
                      "assets/images/images/body_sebha_logo.png")))),
      Positioned(
        top: 3,
        child: Image.asset("assets/images/images/head_sebha_logo.png"),
      ),
      Positioned(
        top: 350,
        child: Container(
            child: Column(children: [
          Text(
            "عدد التسبيحات",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: 35,
          ),
          TextButton(
            onPressed: () {
              digit();
            },
            child: Text(
              "${widget.digit}",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            style: ButtonStyle(
                fixedSize: MaterialStatePropertyAll(Size(69, 81)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
                backgroundColor:
                    //Theme.of(context).textButtonTheme.style
                    MaterialStatePropertyAll(
                        Color.fromARGB(255, 201, 177, 144))),
          ),
          SizedBox(
            height: 22,
          ),
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: AppTheme.lightPrimary,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                child: Text("${widget.tsbeh[widget.index]}",
                    style: Theme.of(context).textTheme.headlineMedium),
              ))
        ])),
      ),
    ]);
  }

  void digit() {
    if (widget.digit >= 132) {
      widget.digit = 0;
      widget.index = 0;
    } else if (widget.digit < 33) {
      widget.index = 0;
      widget.digit++;
    } else if (widget.digit >= 33 && widget.digit < 66) {
      widget.index = 1;
      widget.digit++;
    } else if (widget.digit >= 66 && widget.digit < 99) {
      widget.index = 2;
      widget.digit++;
    } else if (widget.digit >= 99 && widget.digit < 132) {
      widget.index = 3;
      widget.digit++;
    }
    setState(() {});
  }

  void routatSebha() {
    setState(() {
      widget.angle += 3.14;
      digit();
    });
  }
}
