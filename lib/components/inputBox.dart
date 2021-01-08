import 'package:bolt_ecommerce_app/constants/constants.dart';
import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  final double height, width;
  final String hintText;
  final Color txtColor, cursorColor;
  final TextStyle hintStyle;
  final IconData icon;
  double fontsize;
  final Widget suffixIcon;
  final bool obscure;
  final TextEditingController controller;

  // void Funtion(String value) validator;

  InputBox(
      {this.height,
      this.width,
      this.hintText,
      this.txtColor,
      this.cursorColor,
      this.hintStyle,
      this.icon,
      this.suffixIcon,
      this.obscure,
      this.controller,
      this.fontsize});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        maxLines: 1,
        // obscureText: !obscure,

        decoration: InputDecoration(
            hintText: 'Enter your $hintText',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              //  when the TextFormField in unfocused
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              //  when the TextFormField in focused
            ),
            border: UnderlineInputBorder(),
            suffixIcon: Icon(icon),
            suffixStyle: TextStyle(
                fontFamily: fontFamily, fontSize: fontsize, color: txtColor)));
  }
}
