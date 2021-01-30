import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pages_app/blogPage.dart';
import 'package:pages_app/homePage.dart';
import 'package:pages_app/messagePage.dart';
import 'package:pages_app/recentPage.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  String cartTitle = 'مرحبا بكم في عربة التسوق';
  List<Widget> _widgetOptions = <Widget>[
    Image.asset('drawable/message_gray.png'),
    Image.asset('drawable/cart_gray.png'),
    Image.asset('drawable/home_gray.png'),
    Image.asset('drawable/clock_gray.png'),
    Image.asset('drawable/blog_gray.png'),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });
  }

  int _selectedIndex = 0;

  // String msgIcongrey = 'messae_gray.png';

  // String msgIconblack = 'message.png';

  // String cartIcongrey = 'cart_gray.png';

  // String cartIconblack = 'cart.png';

  // String homeIcongrey = 'home_gray.png';

  // String homeIconblack = 'home.png';

  // String recentIcongrey = 'clock_gray.png';

  // String recentIconblack = 'clock.png';

  // String blogIcongrey = 'blog_gray.png';

  // String blogIconblack = 'blog.png';

  String cartpage = 'عربتك';

  String cartSize = ':حجم العربة';

  String cartIsEmpty = 'عربة التسوق فارغة';

  int quanity = 0;

  String addtoCart = 'أضف إلى السلة';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          cartTitle,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Center(
            child: Text(
              cartpage,
              style: TextStyle(color: Colors.black26, fontSize: 25),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.75, left: 10,bottom: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cartIsEmpty,
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),
                    Text(
                      quanity.toString(),
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      cartSize,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      addtoCart,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 10,)
              ],
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(
          //       left: 15,
          //       right: 15,
          //       top: MediaQuery.of(context).size.height * 0.83),
          //   child: Container(
          //     height: 45,
          //     width: MediaQuery.of(context).size.width * 0.95,
          //     child: RaisedButton(
          //       onPressed: () {},
          //       child: Text(
          //         addtoCart,
          //         style: TextStyle(
          //             color: Colors.white,
          //             fontWeight: FontWeight.w600,
          //             fontSize: 20),
          //       ),
          //       color: Colors.red,
          //     ),
          //   ),
          // ),
          // Positioned(
          //   bottom: 0,
          //   right: 0,
          //   left: 0,
          //   child: Container(
          //     height: 47,
          //     decoration: BoxDecoration(color: Colors.white),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         InkWell(
          //             onTap: () {
          //               setState(() {
          //                 msgIcongrey = msgIconblack;
          //                 Navigator.push(
          //                     context,
          //                     MaterialPageRoute(
          //                       builder: (context) => MessagePage(),
          //                     ));
          //               });
          //             },
          //             child: Image.asset('drawable/' + msgIcongrey)),
          //         InkWell(
          //             onTap: () {
          //               setState(() {
          //                 if (cartIcongrey != cartIconblack) {
          //                   cartIcongrey = cartIconblack;
          //                 }
          //                 Navigator.push(
          //                     context,
          //                     MaterialPageRoute(
          //                       builder: (context) => CartPage(),
          //                     ));
          //               });
          //             },
          //             child: Image.asset('drawable/' + cartIcongrey)),
          //         InkWell(
          //             onTap: () {
          //               setState(() {
          //                 homeIcongrey = homeIconblack;
          //               });
          //             },
          //             child: Image.asset('drawable/' + homeIcongrey)),
          //         InkWell(
          //             onTap: () {
          //               recentIcongrey = recentIconblack;
          //               Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) => RecentPage(),
          //                   ));
          //             },
          //             child: Image.asset('drawable/' + recentIcongrey)),
          //         InkWell(
          //             splashColor: Colors.black,
          //             onTap: () {
          //               setState(() {
          //                 blogIcongrey = blogIconblack;
          //                 Navigator.push(
          //                     context,
          //                     MaterialPageRoute(
          //                       builder: (context) => BlogPage(),
          //                     ));
          //               });
          //             },
          //             child: Image.asset('drawable/' + blogIcongrey)),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
      extendBodyBehindAppBar: true,
    );

  }
}
