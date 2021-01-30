import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:urdu_shayari/Widgets/sadPoemDescription1.dart';

class SadPoemsDescriptionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PoemDescriptionListItems();
  }
}

class PoemDescriptionListItems extends StatefulWidget {
  IconData favoriteIcon = Icons.favorite;

  String title = 'The Sun and Her Flowers';
  String authorName = 'Trista Matooor';
  Color starOneColor = Colors.orangeAccent;
  Color starTwoColor = Colors.orangeAccent;
  Color starThreeColor = Colors.orangeAccent;
  Color starFourColor = Colors.orangeAccent;
  Color starFiveColor = Colors.orangeAccent;
  Color favoriteColor;

  PoemDescriptionListItems({
    Key key,
    this.favoriteIcon,
    this.title,
    this.authorName,
    this.starOneColor,
    this.starTwoColor,
    this.starThreeColor,
    this.favoriteColor,
    this.starFourColor,
    this.starFiveColor,
  }) : super(key: key);

  @override
  _PoemDescriptionListItemsState createState() =>
      _PoemDescriptionListItemsState();
}

class _PoemDescriptionListItemsState extends State<PoemDescriptionListItems> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(70, 40),
                        bottomRight: Radius.elliptical(70, 40)),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(60, 40),
                      bottomRight: Radius.elliptical(60, 40),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(bottom: 1, left: 3, right: 3, top: 0),
                      child: Image.asset(
                        'drawable/image_placeholder.png',
                        height: 100,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SadPoems2(
                                      authorName: 'Trista Matoor',
                                      backgroundColor: Colors.blueAccent,
                                      bookTitle: 'The Sun and Her Flowers',
                                      poemsTitle: 'Sad Poems',
                                      totalNoPoems: '250',
                                    )));
                      },
                      child: Text(
                        widget.title,
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 19),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Author:',
                          style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ),
                        Text(
                          widget.authorName,
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Text(
                          '  Length:',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        Text(
                          '107pages',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        RatingStars(),
                        Text(
                          '  Rating  ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          'Read ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                              fontSize: 12),
                        ),
                        Icon(
                          Icons.chrome_reader_mode_outlined,
                          color: Colors.grey[600],
                          size: 12,
                        ),
                        Text(
                          '  Listen ',
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        Icon(
                          Icons.headset,
                          color: Colors.grey,
                          size: 13,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        IconFav(),
      ],
    );
  }
}

class IconFav extends StatefulWidget {
  @override
  _IconFavState createState() => _IconFavState();
}

class _IconFavState extends State<IconFav> {
  Color colorFav = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          colorFav =
              colorFav == Colors.grey ? colorFav = Colors.red : Colors.grey;
        });
      },
      child: Icon(
        Icons.favorite,
        color: colorFav,
      ),
    );
  }
}

class RatingStars extends StatefulWidget {
  @override
  _RatingStarsState createState() => _RatingStarsState();
}

class _RatingStarsState extends State<RatingStars> {
  @override
  Widget build(BuildContext context) {
    var rating = 3.0;
    return SmoothStarRating(
      allowHalfRating: true,
      onRated: (v) {},
      starCount: 5,
      size: 15,
      rating: rating,
      color: Colors.orangeAccent,
      borderColor: Colors.orange,
      spacing: 0.0,
    );
  }
}

class TitleClicked extends StatefulWidget {
  @override
  _TitleClickedState createState() => _TitleClickedState();
}

class _TitleClickedState extends State<TitleClicked> {
  @override
  Widget build(BuildContext context) {
    String title;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SadPoems2(),
            ),
          );
        },
        child: Container(
          child: Text(
            title,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 19),
            ),
          ),
        ),
      ),
    );
  }
}
