// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
class Iconcontent extends StatelessWidget {

  Iconcontent({required this.icon,required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 50),
        SizedBox(
          height: 18.0,
          //   color:Colors.white
        ),
        Text(
          label,
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
