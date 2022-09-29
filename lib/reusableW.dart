// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, sort_child_properties_last, file_names

import 'package:flutter/material.dart';


class ReusableW extends StatelessWidget {
  ReusableW({ required this.colour,   this.cardcontent, this.onPress});
  final Color colour;
  final Widget ?cardcontent;
  final Function() ? onPress;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap:onPress,
      child:Container(  
        width: double.maxFinite,
          child: cardcontent,
          margin: EdgeInsets.all(17.0),
          decoration: BoxDecoration(
            color: colour,

            //color: Color(0xFF1D1E33),
            borderRadius: BorderRadius.circular(9.0),
          ),
        ),
    );


  }
}
