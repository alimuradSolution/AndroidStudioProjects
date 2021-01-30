import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urdu_shayari/Screens/navbar.dart';
import 'package:urdu_shayari/Widgets/sadPoemDescription1.dart';
import 'package:urdu_shayari/Widgets/sadPoemDescriptionList.dart';
import 'package:urdu_shayari/Widgets/testWidgets.dart';

class LovePoems2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              color: Colors.redAccent,
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

            // Padding(
            //   padding: EdgeInsets.only(
            //       top: MediaQuery.of(context).size.height * 0.2,
            //       left: MediaQuery.of(context).size.width * 0.06,
            //       right: MediaQuery.of(context).size.width * 0.06),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(20),
            //     child: Container(
            //       height: 120,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //       ),
            //       child: GestureDetector(
            //         onTap: () => Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => SadPoems2(
            //                       bookTitle: 'The Sun and Her Flowers',
            //                       authorName: ' Trista Matoor ',
            //                       backgroundColor: Colors.redAccent,
            //                       poemsTitle: 'Love Poems',
            //                       totalNoPoems: 'Length poems 2050 ',
            //                     ))),
            //         child: PoemDescriptionListItems(
            //           authorName: ' Trista Matoor ',
            //           title: 'The Sun and Her Flowers',
            //           favoriteIcon: Icons.favorite,
            //           starOneColor: Colors.orangeAccent,
            //           starTwoColor: Colors.orangeAccent,
            //           starThreeColor: Colors.orangeAccent,
            //           starFourColor: Colors.orangeAccent,
            //           starFiveColor: Colors.grey,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(
            //       top: MediaQuery.of(context).size.height * 0.4,
            //       left: MediaQuery.of(context).size.width * 0.06,
            //       right: MediaQuery.of(context).size.width * 0.06),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(20),
            //     child: Container(
            //       height: 120,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //       ),
            //       child: GestureDetector(
            //         onTap: () => Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => SadPoems2(
            //                       bookTitle: 'The Prophet',
            //                       authorName: ' Kohli Gibran ',
            //                       backgroundColor: Colors.redAccent,
            //                       poemsTitle: 'Love Poems',
            //                       totalNoPoems: 'Length poems 2050 ',
            //                     ))),
            //         child: PoemDescriptionListItems(
            //           authorName: 'Kohli Gibran',
            //           title: 'The Prophet',
            //           favoriteIcon: Icons.favorite,
            //           starOneColor: Colors.orangeAccent,
            //           starTwoColor: Colors.orangeAccent,
            //           starThreeColor: Colors.orangeAccent.withOpacity(0.4),
            //           starFourColor: Colors.grey,
            //           starFiveColor: Colors.grey,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(
            //       top: MediaQuery.of(context).size.height * 0.6,
            //       left: MediaQuery.of(context).size.width * 0.06,
            //       right: MediaQuery.of(context).size.width * 0.06),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(20),
            //     child: Container(
            //       height: 120,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         // borderRadius: BorderRadius.circular(25),
            //       ),
            //       child: GestureDetector(
            //         onTap: () => Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => SadPoems2(
            //                       bookTitle: 'An American Lyric',
            //                       authorName: ' Trista Matoor ',
            //                       backgroundColor: Colors.redAccent,
            //                       poemsTitle: 'Love Poems',
            //                       totalNoPoems: 'Length poems 2050 ',
            //                     ))),
            //         child: PoemDescriptionListItems(
            //           authorName: 'Trista Matoor',
            //           title: 'An American Lyric',
            //           favoriteIcon: Icons.favorite,
            //           starOneColor: Colors.orangeAccent,
            //           starTwoColor: Colors.orangeAccent,
            //           starThreeColor: Colors.grey,
            //           starFourColor: Colors.grey,
            //           starFiveColor: Colors.grey,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(
            //       top: MediaQuery.of(context).size.height * 0.8,
            //       left: MediaQuery.of(context).size.width * 0.06,
            //       right: MediaQuery.of(context).size.width * 0.06),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(20),
            //     child: Container(
            //       height: 120,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         // borderRadius: BorderRadius.circular(25),
            //       ),
            //       child: GestureDetector(
            //         onTap: () => Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => SadPoems2(
            //                       bookTitle: 'The Flowers of Evil',
            //                       authorName: ' Trista Matoor ',
            //                       backgroundColor: Colors.redAccent,
            //                       poemsTitle: 'Love Poems',
            //                       totalNoPoems: 'Length poems 2050 ',
            //                     ))),
            //         child: PoemDescriptionListItems(
            //           authorName: 'Trista Matoor',
            //           title: 'The Flowers of Evil',
            //           favoriteIcon: Icons.favorite,
            //           starOneColor: Colors.orangeAccent,
            //           starTwoColor: Colors.orangeAccent,
            //           starThreeColor: Colors.orangeAccent,
            //           starFourColor: Colors.grey,
            //           starFiveColor: Colors.grey,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(
            //       top: MediaQuery.of(context).size.height,
            //       left: MediaQuery.of(context).size.width * 0.06,
            //       right: MediaQuery.of(context).size.width * 0.06),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(20),
            //     child: Container(
            //       height: 120,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //       ),
            //       child: GestureDetector(
            //         onTap: () => Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => SadPoems2(
            //                       bookTitle: 'No Matter the Wreckage',
            //                       authorName: ' Trista Matoor ',
            //                       backgroundColor: Colors.redAccent,
            //                       poemsTitle: 'Love Poems',
            //                       totalNoPoems: 'Length poems 2050 ',
            //                     ))),
            //         child: PoemDescriptionListItems(
            //           authorName: 'Trista Matoor',
            //           title: 'No Matter the Wreckage',
            //           favoriteIcon: Icons.favorite,
            //           starOneColor: Colors.orangeAccent,
            //           starTwoColor: Colors.orangeAccent,
            //           starThreeColor: Colors.orangeAccent,
            //           starFourColor: Colors.orangeAccent,
            //           starFiveColor: Colors.grey,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
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
