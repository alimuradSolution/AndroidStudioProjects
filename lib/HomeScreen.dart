import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:pages_app/blogPage.dart';
import 'package:pages_app/cartPage.dart';
import 'package:pages_app/homePage.dart';
import 'package:pages_app/messagePage.dart';
import 'package:pages_app/recentPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String search = 'Search';
  String home = 'Home';
  String text = 'text';
  String msgIcongrey = 'messae_gray.png';
  String msgIconblack = 'message.png';
  String cartIcongrey = 'cart_gray.png';
  String cartIconblack = 'cart.png';
  String homeIcongrey = 'home_gray.png';
  String homeIconblack = 'home.png';
  String recentIcongrey = 'clock_gray.png';
  String recentIconblack = 'clock.png';
  String blogIcongrey = 'blog_gray.png';
  String blogIconblack = 'blog.png';

  Color colorButtons = Colors.black12;
  Color colorButtonsText = Colors.grey[700];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 30,
        leading: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            SizedBox(
              width: 25,
              height: 25,
              child: Image.asset(
                'drawable/heart_no_selected.png',
              ),
            ),
            // SizedBox(
            //   width: 10,
            // ),
          ],
        ),
        title: Container(
          height: 35,
          width: width,
          decoration: BoxDecoration(color: Colors.black12),
          child: Row(
            children: [
              SizedBox(
                width: width * 0.05,
              ),
              Expanded(
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    // fillColor: Colors.black12,
                    hintText: search,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: -0, vertical: 12),
                    // filled: true,
                    border: InputBorder.none,
                    // suffixIcon: Icon(
                    //   Icons.search,
                    //   color: Colors.black54,
                    // ),
                  ),
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.black45,
              ),
              SizedBox(
                width: width * 0.025,
              ),
            ],
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.black87,
            child: Icon(Icons.person),
          ),
          SizedBox(
            width: 15,
          ),
        ],
        toolbarHeight: 50,
        elevation: 0.0,
      ),
      body: Stack(children: [
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 47,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        msgIcongrey = msgIconblack;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MessagePage(),
                            ));
                      });
                    },
                    child: Image.asset('drawable/' + msgIcongrey)),
                InkWell(
                    onTap: () {
                      setState(() {
                        cartIcongrey = cartIconblack;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CartPage(),
                            ));
                      });
                    },
                    child: Image.asset('drawable/' + cartIcongrey)),
                InkWell(
                    onTap: () {
                      setState(() {
                        homeIcongrey = homeIconblack;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      });
                    },
                    child: Image.asset('drawable/' + homeIcongrey)),
                InkWell(
                    onTap: () {
                      recentIcongrey = recentIconblack;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecentPage(),
                          ));
                      Navigator.pop(context);
                    },
                    child: Image.asset('drawable/' + recentIcongrey)),
                InkWell(
                    splashColor: Colors.black,
                    onTap: () {
                      setState(() {
                        blogIcongrey = blogIconblack;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlogPage(),
                            ));
                      });
                    },
                    child: Image.asset('drawable/' + blogIcongrey)),
              ],
            ),
          ),
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: height * 0.01,
            // ),
            // Center(
            //   child: Text(
            //     home,
            //     style: TextStyle(
            //         color: Colors.red, decoration: TextDecoration.lineThrough),
            //   ),
            // ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 120,
                  width: width,
                  child: Swiper.children(
                    autoplay: true,
                    autoplayDelay: 2000,
                    controller: new SwiperController(),
                    pagination: new SwiperPagination(
                        margin: EdgeInsets.all(5),
                        // margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                        builder: new DotSwiperPaginationBuilder(
                            color: Colors.grey[500],
                            activeColor: Colors.white,
                            size: 15.0,
                            activeSize: 18.0)),
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: new Image.asset(
                          "drawable/images3.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: new Image.asset(
                          "drawable/images3.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: new Image.asset("drawable/images4.jpg",
                              fit: BoxFit.cover))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CupertinoScrollbar(
              thickness: 5.5,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 30,
                        width: width * 0.35,
                        decoration: BoxDecoration(
                          color: colorButtons,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Mobile Accessaries',
                            style: TextStyle(
                                color: colorButtonsText,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: colorButtons,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Ravpower',
                              style: TextStyle(
                                  color: colorButtonsText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: colorButtons,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Mobile & Tablets',
                              style: TextStyle(
                                  color: colorButtonsText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                            color: colorButtons,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'JBL',
                              style: TextStyle(
                                  color: colorButtonsText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                            color: colorButtons,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              text,
                              style: TextStyle(
                                  color: colorButtonsText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Text(text, style: TextStyle(fontSize: 15)),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    width: width * 0.2,
                    color: Colors.red,
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      Card(),
                      Card(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
