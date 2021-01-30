import 'package:flutter/material.dart';
import 'package:urdu_shayari/Screens/loginPage.dart';

import 'package:urdu_shayari/Widgets/add2Cart.dart';

import 'package:urdu_shayari/Screens/homepage.dart';
import 'package:urdu_shayari/Screens/navbar.dart';
import 'package:urdu_shayari/Widgets/cartWidget.dart';
import 'package:urdu_shayari/Widgets/testWidgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
