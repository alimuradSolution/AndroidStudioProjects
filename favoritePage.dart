import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urdu_shayari/Widgets/favoritePageWidget.dart';
import 'package:urdu_shayari/Widgets/sadPoemDescription1.dart';
import 'package:urdu_shayari/Widgets/sadPoemDescriptionList.dart';
import 'package:urdu_shayari/Widgets/testWidgets.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Stack(
                children: [
                  Icon(
                    Icons.add_alert_outlined,
                    color: Colors.black,
                    size: 25,
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,
              ),
              Text('Back', style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FavWidgets(
                      colorContainer: Colors.redAccent,
                      firstText: 'Welcome to your Wishlist items Page',
                      secondText: 'This is the Title of you item',
                      shadowColor: Colors.redAccent,
                    ),
                    FavWidgets(
                      colorContainer: Colors.purpleAccent,
                      firstText: 'Welcome to your Wishlist items Page',
                      secondText: 'This is the Title of you item',
                      shadowColor: Colors.purpleAccent,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                // height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(025),
                      topRight: Radius.circular(25)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Wishlist',
                              style: GoogleFonts.italiana(
                                  textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ))),
                          Text(
                            'See all',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.grey,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    ListContainers(
                      title: 'Glass flower pot',
                      descritptionText: 'Modern simple floral vase         ',
                      leftButtonDesc: 'Red Colour',
                      rightButtonDesc: 'Less than \$35',
                    ),
                    ListContainers(
                      title: 'Scented candles',
                      descritptionText:
                          'Long-lassting candle                  ',
                      leftButtonDesc: 'Vanilla smell',
                      rightButtonDesc: 'Less than \$22',
                    ),
                    ListContainers(
                      title: 'Box of sweets',
                      descritptionText: 'Chocolate cookies and candies',
                      leftButtonDesc: 'Kit Kat',
                      rightButtonDesc: 'Less than \$15',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
