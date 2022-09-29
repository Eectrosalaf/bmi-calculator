// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:bmi_czlculatorx/constant.dart';
import 'package:flutter/material.dart';
import 'package:bmi_czlculatorx/page1.dart';
import 'package:bmi_czlculatorx/reusableW.dart';

class Resultpage extends StatelessWidget {
 // double weight = 23.6;

  Resultpage(
      {required this.bmiresult,
      required this.textresult,
      required this.resultint});

  final  String ? bmiresult;
  final String ?textresult;
  final String ?resultint;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          centerTitle: true,
          title: Text(
            ' BMI CALCULATOR',
            style: TextStyle(),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Your Result",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
            ),
            Expanded(
              child: ReusableW(
                //width: double.maxFinite,
                colour: kcardcolor,

                //constraints: BoxConstraints.tightFor(width: 56, height: 56),
                cardcontent: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      textresult!,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.green),
                    ),
                    Text(
                      bmiresult!,
                      style:
                          TextStyle(fontSize: 100, fontWeight: FontWeight.w900),
                    ),
                    Text(
                    resultint!,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                // margin: EdgeInsets.all(12),
                // width: 500,
                // height: 900,
                // color: kcardcolor,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) {
                  return Resultpage(
                    bmiresult:bmiresult ,
                    textresult: textresult,
                    resultint: resultint,
                  );
                }));
              },
              child: Container(
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  ),
                ),
                // width: double.infinity,
                height: kbotconsize,
                color: kbottomcardcolor,
              ),
            ),
          ],
        ));
  }
}
