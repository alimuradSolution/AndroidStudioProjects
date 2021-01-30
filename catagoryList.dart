import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatagoryList extends StatefulWidget {
  @override
  _CatagoryListState createState() => _CatagoryListState();
}

class _CatagoryListState extends State<CatagoryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CatagoryListItems(),
      ),
    );
  }
}

class CatagoryListItems extends StatelessWidget {
  String title;
  Color colorBox;
  IconData emoji;

  CatagoryListItems({
    Key key,
    this.title,
    this.colorBox,
    this.emoji,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colorBox, borderRadius: BorderRadius.circular(10)),
      // width: MediaQuery.of(context).size.width * 0.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Icon(
                    emoji,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'description',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
