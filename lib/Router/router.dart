import 'package:bolt_ecommerce_app/constants/routes.dart';
import 'package:bolt_ecommerce_app/views/SignupScreen.dart';
import 'package:bolt_ecommerce_app/views/WelcomeScreen.dart';
import 'package:bolt_ecommerce_app/views/homeScreen.dart';
import 'package:bolt_ecommerce_app/views/loginScreen.dart';
import 'package:flutter/material.dart';


   Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcomeScreenRoute:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case loginScreenRoute:
      return MaterialPageRoute(builder: (_) => LoginScreen());
      case signupScreenRoute:
        return MaterialPageRoute(builder: (_) => SignupScreen());
      case mainScreenRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }

