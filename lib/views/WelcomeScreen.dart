import 'package:bolt_ecommerce_app/components/LoginSingup_button.dart';
import 'package:bolt_ecommerce_app/components/MyText.dart';
import 'package:bolt_ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
          child: Column(
        children: [
          MyText(
            text: 'Welcome to Bolt',
            fontsize: 20,
            fontFamily: 'SegoeUI-Semibold',
            color: textColor,
          ),
          SizedBox(
            height: 10,
          ),
          MyText(
            text: 'Explore Us',
            fontsize: 18,
            fontFamily: 'SegoeUI',
          ),
          SizedBox(
            height: height * 0.15,
          ),
          Image.asset('assets/welcomescreen_img.png'),
          SizedBox(
            height: height * 0.15,
          ),
          LoginSingup_Button(
            text: 'Log in',
            txt_color: Colors.white,
            fontsize: 16,
            bg_color: login_btncolor,
            min_width: width * 0.50,
            route: '/login',
          ),
          LoginSingup_Button(
            text: 'Singup',
            txt_color: signup_btncolor,
            fontsize: 16,
            bg_color: Colors.white,
            min_width: width * 0.50,
            route: '/signup',
          ),
        ],
      )),
    );
  }
}
