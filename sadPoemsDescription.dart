import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urdu_shayari/Screens/homepage.dart';
import 'package:urdu_shayari/Widgets/lovePoemDescription.dart';
import 'package:urdu_shayari/Widgets/sadPoemDescription1.dart';
import 'package:urdu_shayari/Widgets/sadPoemDescriptionList.dart';

import 'package:urdu_shayari/Screens/navbar.dart';
import 'package:urdu_shayari/Widgets/readOrListen.dart';
import 'package:urdu_shayari/Widgets/sadPoemDescriptionList.dart';
import 'package:urdu_shayari/Widgets/testWidgets.dart';

class SadPoemsDescription extends StatefulWidget {
  @override
  _SadPoemsDescriptionState createState() => _SadPoemsDescriptionState();
}

class _SadPoemsDescriptionState extends State<SadPoemsDescription> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              color: Colors.blueAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0, 0.7),
                                            spreadRadius: 1.5,
                                            color: Colors.black12),
                                      ]),
                                  child: CircleAvatar(
                                      radius: 25,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: Image.asset(
                                              'drawable/image_placeholder.png'))),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 7, top: 2),
                                  child: Container(
                                    height: 18,
                                    width: 18,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.greenAccent),
                                    child: Center(
                                        child: Text('5',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold))),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          children: [
                            Text(
                              'Sad Poems',
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                    fontSize: 22),
                              ),
                            ),
                            Text(
                              'Total poems 250',
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.04,
                  right: MediaQuery.of(context).size.width * 0.04),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Tests(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, left: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NavBar()));
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                  Text(
                    'Go Back',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
