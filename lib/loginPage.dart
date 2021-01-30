import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:pages_app/accountPage.dart';
import 'package:pages_app/forgotPage.dart';
import 'package:pages_app/registerPage.dart';

class LoginPage extends StatelessWidget {
  String email = 'البريد الإلكتروني';
  String password = 'كلمه السر';
  String login = 'تسجيل الدخول';
  String register = 'ليس لديك تسجيل الدخول؟ سجل هنا';
  String forgotLogin = 'تسجيل الدخول نسيت؟ إعادة تعيين هنا';
  Color loginColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        actions: [
          RotationTransition(
            turns: AlwaysStoppedAnimation(180 / 360),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Image.asset(
                'drawable/back.png',
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: MediaQuery.of(context).size.height * 0.40,
            //   width: MediaQuery.of(context).size.width,
            //   child: Image.asset('assets/asset.jpeg', fit: BoxFit.cover),
            // ),
            Container(
              height: media.height * 0.425,
              width: media.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(0xFF, 0x18, 0x34, 0x49),
              ),
              // child: Padding(
              //   padding: const EdgeInsets.all(15.0),
              // child: Image.asset(
              //   'drawable/special_logo_bg.png',
              //   fit: BoxFit.cover,
              // ),
              // ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: media.height * 0.1,
                    left: media.width * 0.2,
                    right: media.width * 0.2),
                child: Image.asset(
                  'drawable/special_logo_bg.png',
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: media.width * 0.045),
              child: TextFormField(
                cursorColor: Colors.blue,
                cursorHeight: 25,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(
                      MediaQuery.of(context).size.height * 0.020),
                  hintText: email,
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(color: Colors.black, width: 1.2)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black, width: 1.2),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: media.width * 0.045),
              child: TextFormField(
                cursorColor: Colors.blue,
                cursorHeight: 25,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(
                      MediaQuery.of(context).size.height * 0.020),
                  hintText: password,
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(color: Colors.black, width: 1.1)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black, width: 1.1),
                  ),
                ),
              ),
            ),
            SizedBox(height: media.height * 0.035),
            Container(
              height: 45,
              width: media.width * 0.9,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.red,
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  login,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 21),
                ),
              ),
            ),

            SizedBox(height: media.height * 0.025),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Text(
                register,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: media.height * 0.015,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ForgotPage()));
              },
              child: Text(
                forgotLogin,
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
