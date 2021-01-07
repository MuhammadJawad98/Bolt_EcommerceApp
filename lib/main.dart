import 'package:bolt_ecommerce_app/views/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'constants/colors.dart';
import 'constants/routes.dart';
import 'package:bolt_ecommerce_app/Router/router.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Theme.of(context).copyWith(
            accentIconTheme: Theme.of(context)
                .accentIconTheme
                .copyWith(color: Colors.black87),
            accentColor: Colors.black87,
            primaryColor: Colors.white,
            primaryIconTheme: Theme.of(context)
                .primaryIconTheme
                .copyWith(color: Colors.black87),
            primaryTextTheme: Theme.of(context)
                .primaryTextTheme
                .apply(bodyColor: Colors.white)),
        onGenerateRoute: router.generateRoute,
        initialRoute: welcomeScreenRoute,
        debugShowCheckedModeBanner: false,
        home: SplashScreenView(
          home: WelcomeScreen(),
          duration: 5000,
          imageSize: 200,
          imageSrc: "assets/logo.png",
          backgroundColor: splashBackground_color,
        ));
  }
}
