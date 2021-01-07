import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  String text, fontFamily;
  double fontsize;
  Color color;

  MyText({this.text, this.fontFamily, this.fontsize, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontsize, fontFamily: fontFamily, color: color),
    );
  }
}
