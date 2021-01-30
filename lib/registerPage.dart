import 'dart:io';

import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:pages_app/loginPage.dart';
import 'package:pages_app/spinnerScreen.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String firstName = 'الاسم الاول';

  String password = 'كلمه السر';

  String lastName = 'الكنية';

String email = 'البريد الإلكتروني';

  String register = 'تسجيل';

  String phone = 'هاتف';

  String signup = 'سجل';

  String alreadyHaveAccount = 'هل لديك حساب؟ تسجيل الدخول';

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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

        // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       // Container(
        //   height: MediaQuery.of(context).size.height * 0.40,
        //   width: MediaQuery.of(context).size.width,
        //   child: Image.asset('assets/asset.jpeg', fit: BoxFit.cover),
        // ),

        body: Container(
          child: Column(
            children: [
              Container(
                height: media.height * 0.4,
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
                      top: media.height * 0.08,
                      left: media.width * 0.2,
                      right: media.width * 0.2),
                  child: Image.asset(
                    'drawable/special_logo_bg.png',
                  ),
                ),
              ),
              // Container(
              //   height: MediaQuery.of(context).size.height * 0.40,
              //   width: MediaQuery.of(context).size.width,
              //   child: Image.asset(
              //     'drawable/special_logo.jpeg',
              //     fit: BoxFit.cover,
              //   ),
              // ),
              Expanded(
                child: Scrollbar(
                  thickness: 5,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.05,
                              top: MediaQuery.of(context).size.height * 0.05,
                              bottom:
                                  MediaQuery.of(context).size.height * 0.01),
                          child: Text(
                            register,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.04),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.015,
                              left: MediaQuery.of(context).size.width * 0.06,
                              right: MediaQuery.of(context).size.width * 0.06),
                          child: Container(
                            height: 45,
                            child: TextFormField(
                              cursorColor: Colors.blue,
                              cursorHeight: 25,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(
                                    MediaQuery.of(context).size.height * 0.020),
                                hintText: firstName,
                                hintStyle: TextStyle(color: Colors.grey[600]),
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1.2),
                                    borderRadius: BorderRadius.circular(18)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1.2)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.019,
                              left: MediaQuery.of(context).size.width * 0.06,
                              right: MediaQuery.of(context).size.width * 0.06),
                          child: Container(
                            height: 45,
                            child: TextFormField(
                              cursorColor: Colors.blue,
                              cursorHeight: 25,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(
                                    MediaQuery.of(context).size.height * 0.020),
                                hintText: lastName,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1.2),
                                    borderRadius: BorderRadius.circular(18)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1.2)),
                                hintStyle: TextStyle(color: Colors.grey[600]),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(),
                                ),
                              ),
                            ),
                          ),
                          // ),
                          // Padding(
                          //   padding: EdgeInsets.only(
                          //       top: MediaQuery.of(context).size.height * 0.015,
                          //       left: MediaQuery.of(context).size.width * 0.4,
                          //       right: MediaQuery.of(context).size.width * 0.05),
                          //   child:
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 5),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.054,
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black, width: 1),
                                    borderRadius: BorderRadius.circular(18)),
                                child: CountryCodePicker(
                                  onChanged: print,
                                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                  initialSelection: 'PK',
                                  favorite: ['+92', 'PK'],
                                  // optional. Shows only country name and flag
                                  showCountryOnly: false,
                                  // optional. Shows only country name and flag when popup is closed.
                                  showOnlyCountryWhenClosed: false,
                                  // optional. aligns the flag and the Text left
                                  alignLeft: false,
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.032,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width * 0.54,
                                child: Container(
                                  height: 45,
                                  child: TextFormField(
                                    cursorColor: Colors.blue,
                                    cursorHeight: 25,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.03),
                                      hintText: phone,
                                      hintStyle:
                                          TextStyle(color: Colors.grey[500]),
                                      fillColor: Colors.white,
                                      filled: true,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(18),
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 1.2),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 1.2)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.003,
                              left: MediaQuery.of(context).size.width * 0.06,
                              right: MediaQuery.of(context).size.width * 0.06),
                          child: Container(
                            height: 45,

                            child: TextFormField(
                              cursorColor: Colors.blue,
                              cursorHeight: 25,
                              decoration: InputDecoration(
                                hintText: email,
                                contentPadding: EdgeInsets.all(14),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1.2),
                                    borderRadius: BorderRadius.circular(18)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1.2)),
                                hintStyle: TextStyle(color: Colors.grey[500],),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.07,
                              top: MediaQuery.of(context).size.height * 0.02),
                          child: Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width * 0.87,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(
                                    MediaQuery.of(context).size.height *
                                        0.015)),
                            child: Center(
                              child: Text(
                                signup,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            child: Text(
                              alreadyHaveAccount,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.026),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey[100],
        // appBar: AppBar(
        //   toolbarHeight: 40,

        //   backgroundColor: Colors.transparent,
        //   // backgroundColor: Color.fromARGB(0xFF, 0x10, 0x20, 0x27),
        //   elevation: 0.0,
        //   leading: IconButton(
        //     icon: Image.asset(
        //       'drawable/back.png',
        //       color: Colors.white,
        //     ),
        //     onPressed: () {
        //       return Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => SpinnerScreen(),
        //           ));
        //     },
        //   ),
        // ),
        // extendBodyBehindAppBar: true,
      ),
    );
  }
}
