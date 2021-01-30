import 'package:flutter/material.dart';
import 'package:pages_app/DescriptionFurther.dart';

class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  String customizeTitle = 'عنوان المدونة';
  String blogPage = 'صفحة المدونة';
  String date1 = '2020-07-23 10:26:25';

  String customise = 'تخصيص سمة ';
  String productDescriptionPage = 'صفحة المدونة';

  String date = '2020-07-23 10:26:05';

  String blogSubTitle = 'العنوان الفرعي للمدونة';
  bool check = true;
  IconData Iconss;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          blogPage,
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 4.0,
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {
                  check = true;
                  Iconss = null;
                });
              },
              child: Icon(Iconss)),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: check == false
          ? ProductDescriptionFurther()
          : SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                    child: Container(
                      // height: MediaQuery.of(context).size.height*0.42,
                      child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    check = !check;
                                    if (check == false) {
                                      blogPage = productDescriptionPage;
                                      Iconss = Icons.arrow_forward;
                                    }
                                  });
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) => ProductDescriptionFurther()));
                                },
                                child: Image.asset(
                                  'drawable/image_placeholder.png',
                                  height: 150,
                                  width: double.infinity,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  date,
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text(
                                  blogSubTitle,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.65),
                                  child: Text(
                                    customise,
                                    style: TextStyle(fontSize: 15.5),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Container(
                      // height: MediaQuery.of(context).size.height*0.42,
                      child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    check = !check;
                                    blogPage = productDescriptionPage;
                                    Iconss = Icons.arrow_forward;
                                  });
                                },
                                child: Image.asset(
                                  'drawable/image_placeholder.png',
                                  height: 150,
                                  width: double.infinity,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  date1,
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text(
                                  blogSubTitle,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.65),
                                  child: Text(
                                    customizeTitle,
                                    style: TextStyle(fontSize: 15.5),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
      backgroundColor: Colors.white,
    );
  }
}
