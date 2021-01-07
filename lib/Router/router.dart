import 'package:bolt_ecommerce_app/views/SignupScreen.dart';
import 'package:bolt_ecommerce_app/views/WelcomeScreen.dart';
import 'package:bolt_ecommerce_app/views/loginScreen.dart';
import 'package:flutter/material.dart';


   Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case '/login':
      return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SingupScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }

