// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconcontent.dart';
import 'package:bmi_czlculatorx/reusableW.dart';
import 'constant.dart';
import 'package:bmi_czlculatorx/result.dart';
import 'package:bmi_czlculatorx/roundbtn.dart';
import 'calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGen;
  int height = 180;
  int weight = 34;
  int age = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableW(
                    onPress: () {
                      setState(
                        () {
                          selectedGen = Gender.male;
                        },
                      );
                    },
                    cardcontent:
                        Iconcontent(icon: FontAwesomeIcons.mars, label: "MALE"),
                    colour: selectedGen == Gender.male
                        ? kanticardcolor
                        : kcardcolor,
                  ),
                ),
                Expanded(
                  child: ReusableW(
                    onPress: () {
                      setState(
                        () {
                          selectedGen = Gender.female;
                        },
                      );
                    },
                    cardcontent: Iconcontent(
                        label: 'FEMALE', icon: FontAwesomeIcons.venus),
                    colour: selectedGen == Gender.female
                        ? kanticardcolor
                        : kcardcolor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableW(
              colour: kcardcolor,
              cardcontent: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: knmbertext,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "CM",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: 10,
                      max: 1000,
                      activeColor: Colors.white,
                      inactiveColor: Color(0xFF0A0E21),
                      // label: '$_height',
                      onChanged: (double nvalue) {
                        setState(
                          () {
                            height = nvalue.round();
                          },
                        );
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableW(
                    colour: kcardcolor,
                    cardcontent: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "KG",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundbtn(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Roundbtn(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableW(
                    colour: kcardcolor,
                    cardcontent: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundbtn(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },

                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Roundbtn(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain calcu =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Resultpage(
                  bmiresult:calcu.calculateBMI() ,
                   resultint: calcu.getresultinterpre(),
                  textresult:calcu.getresult(),
                );
              }));
            },
            child: Container(
              child: Center(
                  child: Text(
                "CALCULATE YOUR BMI",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              )),
              margin: EdgeInsets.only (top: 10.0),
              width: double.infinity,
              height: kbotconsize,
              color: kbottomcardcolor,
            ),
          ),
        ],
      ),
    );
  }
}
