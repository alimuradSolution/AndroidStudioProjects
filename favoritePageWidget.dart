import 'package:flutter/material.dart';
import 'package:urdu_shayari/Widgets/sadPoemDescriptionList.dart';

class FavPageWidget extends StatefulWidget {
  @override
  _FavPageWidgetState createState() => _FavPageWidgetState();
}

class _FavPageWidgetState extends State<FavPageWidget> {
  @override
  Widget build(BuildContext context) {
    return FavWidgets();
  }
}

class FavWidgets extends StatelessWidget {
  const FavWidgets(
      {Key key,
      this.colorContainer,
      this.firstText,
      this.secondText,
      this.shadowColor})
      : super(key: key);

  final Color colorContainer, shadowColor;
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colorContainer,
            boxShadow: [
              BoxShadow(
                  color: shadowColor, blurRadius: 10, offset: Offset(0.3, 0))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              firstText,
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 14,
              ),
            ),
            Text(
              secondText,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class ListWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListContainers();
  }
}

class ListContainers extends StatelessWidget {
  String rightButtonDesc;

  final String title;

  final String descritptionText;

  final String leftButtonDesc;

  ListContainers(
      {Key key,
      this.descritptionText,
      this.leftButtonDesc,
      this.rightButtonDesc,
      this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black, width: 0.75)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(15)),
              child: Image.asset(
                'drawable/img5.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      descritptionText,
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Colors.black26, width: 0.75)),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Center(
                                child: Text(
                              leftButtonDesc,
                              style: TextStyle(fontSize: 11),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        // Third(),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Colors.black26, width: 0.75)),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Center(
                                child: Text(
                              rightButtonDesc,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.black),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.topRight,
    child: Padding(
      padding:  EdgeInsets.symmetric(vertical: 10,),
      child: IconFav(),
    )),
          ],
        ),
      ),
    );
  }
}

class ThirdBoxx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String thirdDesc;
    return Third(thirdDesc: thirdDesc);
  }
}

class Third extends StatelessWidget {
  Third({
    Key key,
    this.thirdDesc,
  }) : super(key: key);

  final String thirdDesc;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black26, width: 0.75)),
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Center(
            child: Text(
          thirdDesc,
          style: TextStyle(fontSize: 11, color: Colors.black),
        )),
      ),
    );
  }
}
