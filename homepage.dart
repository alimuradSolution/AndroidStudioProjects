import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urdu_shayari/Screens/addPage.dart';
import 'package:urdu_shayari/Widgets/catagoryList.dart';
import 'package:urdu_shayari/Screens/favoritePage.dart';
import 'package:urdu_shayari/Widgets/funnyPoems.dart';
import 'package:urdu_shayari/Widgets/funnyPoems2.dart';
import 'package:urdu_shayari/Widgets/lovePoemDescription.dart';
import 'package:urdu_shayari/Widgets/lovePoems2.dart';
import 'package:urdu_shayari/Widgets/popularList.dart';
import 'package:urdu_shayari/Widgets/sadPoemsDescription.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex;
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 0.0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        // leadingWidth: double.infinity,
        title: Text('Hi Zihad,\nWhat type of poems you find',
            style: GoogleFonts.lato(
                textStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                    color: Colors.black))),
        actions: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                          child:
                              Image.asset('drawable/image_placeholder.png'))),
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
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      CupertinoIcons.search,
                      color: Colors.black12,
                      size: 20,
                    ),
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.black26),
                    fillColor: Colors.white,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    filled: true,
                  ),
                  cursorColor: Colors.black12,
                  cursorHeight: 25,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0.8),
                          spreadRadius: 1,
                          blurRadius: 3,
                          color: Colors.grey[200])
                    ]),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular list',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold))),
                  Row(
                    children: [
                      Text(
                        'See all',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w800,
                                fontSize: 16)),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 16.54,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.06),
              child: Container(
                height: 200,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PopularListItem(),
                      SizedBox(
                        width: 15,
                      ),
                      PopularListItem(),
                      SizedBox(
                        width: 15,
                      ),
                      PopularListItem(),
                      SizedBox(
                        width: 15,
                      ),
                      PopularListItem(),
                      SizedBox(
                        width: 15,
                      ),
                      PopularListItem(),
                      SizedBox(
                        width: 15,
                      ),
                      PopularListItem(),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Catagory',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold))),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey[600],
                        size: 17,
                      ),
                      Text(
                        '5',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Colors.grey[600], fontSize: 17)),
                      ),
                      Text('/',
                          style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(color: Colors.grey, fontSize: 21),
                          )),
                      Text('35',
                          style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(color: Colors.grey, fontSize: 17),
                          )),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 16.54,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.06,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SadPoemsDescription()));
                      },
                      child: CatagoryListItems(
                          title: 'Sad poems',
                          colorBox: Colors.blue,
                          emoji: Icons.emoji_emotions_outlined),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LovePoems2())),
                      child: CatagoryListItems(
                        title: 'Love Poems',
                        colorBox: Colors.redAccent,
                        emoji: Icons.favorite_outline,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FunnyPoems2()));
                      },
                      child: CatagoryListItems(
                        title: 'Funny Poems',
                        colorBox: Colors.yellow,
                        emoji: Icons.emoji_emotions_rounded,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Authores',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w900))),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey,
                        size: 17,
                      ),
                      Text(
                        '6',
                        style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(color: Colors.grey, fontSize: 17)),
                      ),
                      Text('/',
                          style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(color: Colors.grey, fontSize: 21),
                          )),
                      Text('150',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Colors.grey[600], fontSize: 17),
                          )),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey[600],
                        size: 16.54,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'drawable/5.jpeg',
                        height: 55,
                        width: 55,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Mitchell',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(color: Colors.grey)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'drawable/4.jpeg',
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Annie',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(color: Colors.grey)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'drawable/3.jpeg',
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'James',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(color: Colors.grey)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'drawable/1.jpeg',
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Philip',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(color: Colors.grey)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'drawable/2.jpeg',
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Andrew',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(color: Colors.grey)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
