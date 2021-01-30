import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urdu_shayari/Widgets/sadPoemDescriptionList.dart';

class PopularList extends StatefulWidget {
  @override
  _PopularListState createState() => _PopularListState();
}

class _PopularListState extends State<PopularList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Expanded(
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
    );
  }
}

class PopularListItem extends StatefulWidget {
  const PopularListItem({
    Key key,
  }) : super(key: key);

  @override
  _PopularListItemState createState() => _PopularListItemState();
}

class _PopularListItemState extends State<PopularListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(0.9, 0),
              color: Colors.grey[100],
              spreadRadius: 2,
              blurRadius: 15)
        ],
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'drawable/img6.jpg',
              height: 140,
              width: 80,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 15),
              child: Column(


                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.32),
                    child:IconFav()
                  ),
                  Text(
                    'Honeybee',
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 17,
                    )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Author ',
                        style: GoogleFonts.lato(),
                      ),
                      Text(
                        'Trista Matoor',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w900)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Length ',
                        style: GoogleFonts.lato(),
                      ),
                      Text(
                        '100 pages',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(fontWeight: FontWeight.w900)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Row(
                  //   children: [
                  //     Icon(
                  //       Icons.star,
                  //       color: Colors.orangeAccent,
                  //       size: 18,
                  //     ),
                  //     Icon(Icons.star, color: Colors.orangeAccent, size: 18),
                  //     Icon(Icons.star, color: Colors.orangeAccent, size: 18),
                  //     Icon(Icons.star, color: Colors.orangeAccent, size: 18),
                  //     Icon(Icons.star, color: Colors.grey[300], size: 18),
                  //     SizedBox(
                  //       width: 4,
                  //     ),
                  //     Text(
                  //       'Rating',
                  //       style: GoogleFonts.lato(
                  //           textStyle: TextStyle(color: Colors.grey)),
                  //     ),
                  //   ],
                  // ),
                  Row(
                    children: [
                      RatingStars(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text('Rating',style: TextStyle(color: Colors.grey),),
                      ),
                    ],
                  ),
                  // SizedBox(height: 10,),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        'Read ',
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Icon(
                        Icons.chrome_reader_mode,
                        size: 17,
                        color: Colors.black45,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Listen ',
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Icon(
                        CupertinoIcons.headphones,
                        size: 17,
                        color: Colors.black45,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
