import 'package:bolt_ecommerce_app/components/LoginSingup_button.dart';
import 'package:bolt_ecommerce_app/components/MyText.dart';
import 'package:bolt_ecommerce_app/components/inputBox.dart';
import 'package:bolt_ecommerce_app/constants/colors.dart';
import 'package:bolt_ecommerce_app/constants/constants.dart';
import 'package:bolt_ecommerce_app/constants/routes.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController name_Contoller;
  TextEditingController email_controller;
  TextEditingController password_controller;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: 'Signup',
                fontsize: 30,
                fontFamily: 'SegoeUI',
                color: login_txtColor,
              ),
              SizedBox(
                height: height * 0.1,
              ),
              MyText(
                text: 'Name',
                fontsize: 14,
                color: emailPass_txtcolor,
                fontFamily: fontFamily,
              ),
              InputBox(
                controller: name_Contoller,
                hintText: 'name',
                fontsize: 14,
                txtColor: Color(0Xff404040),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              MyText(
                text: 'Email',
                fontsize: 14,
                color: emailPass_txtcolor,
                fontFamily: fontFamily,
              ),
              InputBox(
                controller: email_controller,
                hintText: 'email',
                fontsize: 14,
                txtColor: Color(0Xff404040),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              MyText(
                text: 'Password',
                fontsize: 14,
                color: emailPass_txtcolor,
                fontFamily: fontFamily,
              ),
              InputBox(
                controller: email_controller,
                hintText: 'password',
                fontsize: 14,
                txtColor: Color(0Xff404040),
                obscure: true,
                icon: Icons.remove_red_eye,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                  child: LoginSingup_Button(
                text: 'Sign up',
                fontsize: 16,
                txt_color: Colors.white,
                bg_color: Color(0Xff667EEA),
                min_width: 250,
                    route: mainScreenRoute,
              )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                      text: 'Already have an account ?',
                      fontsize: 14,
                      fontFamily: fontFamily,
                      color: Color(0XffA3A3A3),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MyText(
                      text: 'Sign in',
                      fontsize: 14,
                      fontFamily: fontFamily,
                      color: Colors.black87,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
