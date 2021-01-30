import 'package:flutter/material.dart';
import 'package:pages_app/homePage.dart';
import 'package:pages_app/navbar.dart';
import 'package:splashscreen/splashscreen.dart';

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Navbar(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Transform.scale(
                scale: 1.5,
                child: Image.asset(
                  'drawable/afterCRop.gif',
                  height: 600,
                ),
              ),
            ),

            // Container(
            //   height: 50,
            //   child: SplashScreen(
            //     loaderColor: Colors.pink,
            //     seconds: 4,
            //     navigateAfterSeconds: Navbar(),
            //   ),
            // )
            // Padding(
            //   padding: EdgeInsets.only(top: 100),
            //   child: Container(
            //     child: SplashScreen(
            //       loaderColor: Colors.pink,
            //       seconds: 4,
            //       navigateAfterSeconds: Navbar(),
            //     ),
            //   ),),
          ],
        ),
      ),
    );
  }
}
