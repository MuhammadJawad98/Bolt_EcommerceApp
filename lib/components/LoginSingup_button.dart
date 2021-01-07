import 'package:flutter/material.dart';

class LoginSingup_Button extends StatelessWidget {
  String text;
  Color txt_color, bg_color;
  double fontsize;
  double min_width;
  String route;


  LoginSingup_Button(
      {this.text,
      this.txt_color,
      this.bg_color,
      this.fontsize,
      this.min_width,this.route});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {Navigator.pushNamed(context, route);},
        child: Text(
          text,
          style: TextStyle(color: txt_color, fontSize: fontsize),
        ),
        color: bg_color,
        minWidth: min_width);
  }
}
