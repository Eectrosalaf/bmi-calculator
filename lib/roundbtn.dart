import 'package:flutter/material.dart';
import 'constant.dart';

class Roundbtn extends StatelessWidget {
  Roundbtn({required this.onPressed, required this.icon});

  final Function() onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      shape: CircleBorder(),
      elevation: 0,
      fillColor: Colors.white,
      child: Icon(icon, color: kcardcolor),
    );
  }
}
