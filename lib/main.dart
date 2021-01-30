import 'package:flutter/material.dart';
import 'package:pages_app/HomeScreen.dart';
import 'package:pages_app/accountPage.dart';
import 'package:pages_app/animatedDots.dart';
import 'package:pages_app/blogPage.dart';
import 'package:pages_app/cartPage.dart';
import 'package:pages_app/forgotPage.dart';
import 'package:pages_app/homePage.dart';
import 'package:pages_app/launchScreen.dart';
import 'package:pages_app/menuButtonDescriptions.dart';
import 'package:pages_app/messagePage.dart';
import 'package:pages_app/navbar.dart';
import 'package:pages_app/pageIndicator.dart';
import 'package:pages_app/productDescription.dart';
// import 'package:pages_app/productDescriptionFurther.dart';
import 'package:pages_app/recentPage.dart';
import 'package:pages_app/registerPage.dart';
import 'package:pages_app/loginPage.dart';
import 'package:pages_app/spinnerScreen.dart';
import 'package:pages_app/splashScreen.dart';
import 'package:pages_app/testWidget.dart';

void main() {
  runApp(PagesApp());
}

class PagesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.grey,
          primaryColor: Colors.blue,
          primaryColorBrightness: Brightness.light,
          accentColor: Colors.purple[200],
          accentColorBrightness: Brightness.light,
        ),

        home: SplashScreen());
  }
}
