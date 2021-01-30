import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urdu_shayari/Screens/navbar.dart';

class LovePoemDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              color: Colors.redAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
                                      borderRadius: BorderRadius.circular(50),
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
                        horizontal: MediaQuery.of(context).size.width * 0.05),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Love Poems',
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                    fontSize: 22),
                              ),
                            ),
                            Text(
                              'Total poems 2050',
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15, left: 15, top: 140),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 150, top: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.elliptical(70, 40),
                                bottomRight: Radius.elliptical(70, 40)),
                            child: Image.asset(
                              'drawable/image_placeholder.png',
                              height: 80,
                              width: 90,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20, bottom: 60),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'The Sun and Her Flowers',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Author: Trista Matoor Length 107pages',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(color: Colors.grey))),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.orangeAccent, size: 17),
                        Icon(Icons.star, color: Colors.orangeAccent, size: 17),
                        Icon(Icons.star, color: Colors.orangeAccent, size: 17),
                        Icon(Icons.star, color: Colors.orangeAccent, size: 17),
                        Icon(
                          Icons.star,
                          color: Colors.grey[500],
                          size: 17,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Rating',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(color: Colors.grey))),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                      child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and \ntypesetting industry. Lorem Ipsum has been the industry\'s standard \ndummy text ever since the 1500s, when an unknown printer took\n a galley of type and scrambled it to make\n a type specimen book. It has survived not only five centuries\n, but also the leap into electronic typesetting\n',
                          style: GoogleFonts.lato(
                              textStyle:
                                  TextStyle(color: Colors.grey, fontSize: 12))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 45,
                            width: 120,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    color: Colors.blueAccent,
                                    offset: Offset(0.6, 0))
                              ],
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(45),
                                  topLeft: Radius.circular(45)),
                            ),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Read',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.chrome_reader_mode_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            )),
                          ),
                          Container(
                            height: 45,
                            width: 120,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10, color: Colors.redAccent)
                              ],
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(45),
                                  topRight: Radius.circular(45)),
                            ),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Listen',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.headset,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            )),
                          ),
                        ],
                      ),
                    )
                  ],
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
      ),
    );
  }
}
