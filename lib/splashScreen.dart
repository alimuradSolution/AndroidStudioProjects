import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:pages_app/navbar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.85,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedSplashScreen(
                  duration: 4000,
                  splash: Image.asset('drawable/splash.gif'),
                  nextScreen: Navbar(),
                  splashTransition: SplashTransition.fadeTransition,
                  splashIconSize: 1200,
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.pinkAccent),
              backgroundColor: Colors.deepOrangeAccent.withOpacity(0.2),
              strokeWidth: 6.5,
            )
          ],
        ),

    );
  }
}
