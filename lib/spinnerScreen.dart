import 'package:flutter/material.dart';
// import 'package:spinner/spinner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pages_app/registerPage.dart';

// import 'dart:math';

class SpinnerScreen extends StatefulWidget {
  @override
  _SpinnerScreenState createState() => _SpinnerScreenState();
}

class _SpinnerScreenState extends State<SpinnerScreen> {
  final spinkit = SpinKitRing(
    color: Colors.yellow,
    size: 50.0,
    // controller:
    // AnimationController(vsync: this,spinkitduration: const Duration(milliseconds: 1200)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/loadingPage.jpeg', fit: BoxFit.cover)),
        InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterPage()));
            },
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.7),
              child: Container(child: spinkit),
            )),
      ]),
    );
  }
}
