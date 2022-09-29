// ignore_for_file: body_might_complete_normally_nullable

import 'dart:math';

class CalculatorBrain {
  CalculatorBrain ({required this.height, required this.weight});

  final  int  height;
  final int  weight;
  double  _bmi=4;
  String calculateBMI() {
    _bmi = ((weight)/ pow(height/100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String? getresult() {
    if (_bmi >= 25) {
      return "overweight";
    } else if (_bmi > 18.5) {
      return "normal";
    } else {
      return "underweight";
    }
  }


  String? getresultinterpre() {
    if (_bmi >= 25) {
      return "overweight for your body";
    } else if (_bmi > 18.5) {
      return "normal for your body";
    } else {
      return "underweight,uuhmmm!!!!!";
    }
  }
}
