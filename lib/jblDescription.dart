// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:pages_app/productDescription.dart';
// import 'package:worm_indicator/worm_indicator.dart';
// import 'package:worm_indicator/shape.dart';
// import 'package:worm_indicator/dot.dart';
// import 'dart:async';
// import './navbar.dart';
// class JblDescription extends StatefulWidget {
//   @override
//   _JblDescriptionState createState() => _JblDescriptionState();
// }
//
// class _JblDescriptionState extends State<JblDescription>
//     with TickerProviderStateMixin {
//   // PageController controller = PageController(initialPage: 0);
//   // int _currentPage = 0;
//   // String text = 'text';
//   // bool falsee = false;
//   // Color textColor = Colors.grey;
//   // Color onTapColor = Colors.black;
//   // List<Widget> pageList = List<Widget>();
//   // Color colorButtons = Colors.black12;
//   // Color colorButtonsText = Colors.grey[700];
//
//   List<Tab> tabs = [
//     Tab(
//       child: Text(
//         'EARPHONES',
//         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.5),
//       ),
//     ),
//     Tab(
//       child: Text(
//         'HEADPHONES',
//         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.5),
//       ),
//     ),
//     Tab(
//       child: Text(
//         'SPEAKER',
//         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.5),
//       ),
//     ),
//     Tab(
//       child: Text(
//         'text',
//         style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.5),
//       ),
//     )
//   ];
//   TabController tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     // pageList.add(ProductDescription());
//     // pageList.add(CartPage());
//     // pageList.add(RecentPage());
//     // pageList.add(BlogPage());
//     // pageList.add(HomePage());
//     // pageList.add(MessagePage());
//     tabController = TabController(length: tabs.length, vsync: this,initialIndex: 3);
//
//     // Timer.periodic(
//     //   Duration(seconds: 2),
//     //   (Timer timer) {
//     //     if (_currentPage < 2) {
//     //       _currentPage++;
//     //     } else {
//     //       _currentPage = 0;
//     //     }
//     //
//     //     controller.animateToPage(
//     //       _currentPage,
//     //       duration: Duration(milliseconds: 500),
//     //       curve: Curves.easeIn,
//     //     );
//     //   },
//     // );
//   }
//
//   // final circleShape = Shape(
//   //   size: 20,
//   //   shape: DotShape.Circle,
//   //   spacing: 8,
//   // );
//
//   @override
//   void dispose() {
//     tabController?.dispose();
//     super.dispose();
//   }
//
//   // Widget buildExampleIndicatorWithShapeAndBottomPos(
//   //     Shape shape, double bottomPos) {
//   //   return Positioned(
//   //     bottom: bottomPos,
//   //     left: 0,
//   //     right: 0,
//   //     child: WormIndicator(
//   //       length: 3,
//   //       controller: controller,
//   //       shape: shape,
//   //       indicatorColor: Colors.white,
//   //       color: Colors.grey,
//   //     ),
//   //   );
//   // }
//   //
//   // int selectedPage = 0;
//   // int index;
//   // String search = 'Search';
//
//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width;
//     var height = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       // appBar: AppBar(
//       //   automaticallyImplyLeading: false,
//       //   backgroundColor: Colors.white,
//       //   leadingWidth: 30,
//       //   leading: Row(
//       //     children: [
//       //       SizedBox(
//       //         width: 5,
//       //       ),
//       //       SizedBox(
//       //         width: 25,
//       //         height: 25,
//       //         child: Image.asset(
//       //           'drawable/heart_no_selected.png',
//       //         ),
//       //       ),
//       //       // SizedBox(
//       //       //   width: 10,
//       //       // ),
//       //     ],
//       //   ),
//       //   title: Container(
//       //     height: 35,
//       //     width: width,
//       //     decoration: BoxDecoration(color: Colors.grey[200]),
//       //     child: Row(
//       //       children: [
//       //         SizedBox(
//       //           width: width * 0.05,
//       //         ),
//       //         Expanded(
//       //           child: GestureDetector(
//       //             onTap: () {
//       //               // print('pressed');
//       //             },
//       //             child: TextField(
//       //               textAlign: TextAlign.end,
//       //               decoration: InputDecoration(
//       //                   // fillColor: Colors.black12,
//       //                   hintText: search,
//       //                   contentPadding:
//       //                       EdgeInsets.symmetric(horizontal: -0, vertical: 12),
//       //                   // filled: true,
//       //                   border: InputBorder.none
//       //                   // suffixIcon: Icon(
//       //                   //   Icons.search,
//       //                   //   color: Colors.black54,
//       //                   // ),
//       //                   ),
//       //             ),
//       //           ),
//       //         ),
//       //         Icon(
//       //           Icons.search,
//       //           color: Colors.black45,
//       //         ),
//       //         SizedBox(
//       //           width: width * 0.025,
//       //         ),
//       //       ],
//       //     ),
//       //   ),
//       //   actions: [
//       //     CircleAvatar(
//       //       radius: 12,
//       //       backgroundColor: Colors.black87,
//       //       child: Icon(Icons.person),
//       //     ),
//       //     SizedBox(
//       //       width: 15,
//       //     ),
//       //   ],
//       //   toolbarHeight: 50,
//       //   elevation: 0.0,
//       // ),
//       body: SingleChildScrollView(
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.start,
//           // crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Stack(
//               //   children: [
//               //     Container(
//               //       height: 140,
//               //       width: double.infinity,
//               //       decoration:
//               //           BoxDecoration(borderRadius: BorderRadius.circular(10)),
//               //       child: PageView(
//               //         scrollDirection: Axis.horizontal,
//               //         controller: controller,
//               //         children: [
//               //           Padding(
//               //             padding: const EdgeInsets.all(8.0),
//               //             child: Container(
//               //               decoration: BoxDecoration(
//               //                 borderRadius: BorderRadius.circular(10),
//               //                 image: DecorationImage(
//               //                   image: new AssetImage('drawable/images2.jpg'),
//               //                   fit: BoxFit.cover,
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //           Padding(
//               //             padding: const EdgeInsets.all(8.0),
//               //             child: Container(
//               //               decoration: BoxDecoration(
//               //                 borderRadius: BorderRadius.circular(10),
//               //                 image: DecorationImage(
//               //                   image: new AssetImage('drawable/images3.jpg'),
//               //                   fit: BoxFit.cover,
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //           Padding(
//               //             padding: const EdgeInsets.all(8.0),
//               //             child: Container(
//               //               decoration: BoxDecoration(
//               //                 borderRadius: BorderRadius.circular(10),
//               //                 image: DecorationImage(
//               //                   image: new AssetImage('drawable/images1.jpg'),
//               //                   fit: BoxFit.cover,
//               //                 ),
//               //               ),
//               //             ),
//               //           )
//               //         ],
//               //       ),
//               //     ),
//               //     buildExampleIndicatorWithShapeAndBottomPos(circleShape, 15),
//               //   ],
//               // ),
//               // SizedBox(
//               //   height: 10,
//               // ),
//               // CupertinoScrollbar(
//               //   thickness: 5.5,
//               //   child: Padding(
//               //     padding: EdgeInsets.only(bottom: 20),
//               //     child: SingleChildScrollView(
//               //       scrollDirection: Axis.horizontal,
//               //       child: Row(
//               //         mainAxisAlignment: MainAxisAlignment.start,
//               //         children: [
//               //           SizedBox(
//               //             width: 5,
//               //           ),
//               //           Container(
//               //             height: 30,
//               //             width: width * 0.35,
//               //             decoration: BoxDecoration(
//               //               color: colorButtons,
//               //               borderRadius: BorderRadius.circular(5),
//               //             ),
//               //             child: Center(
//               //               child: GestureDetector(
//               //                 onTap: () {
//               //                   setState(() {
//               //                     Navigator.of(context).push(MaterialPageRoute(
//               //                         builder: (context) =>
//               //                             ProductDescription()));
//               //                   });
//               //                 },
//               //                 child: Text(
//               //                   'Mobile Accessaries',
//               //                   style: TextStyle(
//               //                       color: colorButtonsText,
//               //                       fontSize: 12,
//               //                       fontWeight: FontWeight.w500),
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //           SizedBox(
//               //             width: 10,
//               //           ),
//               //           GestureDetector(
//               //             onTap: () {
//               //               setState(() {
//               //                 Navigator.of(context).push(MaterialPageRoute(
//               //                     builder: (context) => ProductDescription()));
//               //               });
//               //             },
//               //             child: Container(
//               //               height: 30,
//               //               decoration: BoxDecoration(
//               //                 color: colorButtons,
//               //                 borderRadius: BorderRadius.circular(5),
//               //               ),
//               //               child: Center(
//               //                 child: Padding(
//               //                   padding: const EdgeInsets.all(8.0),
//               //                   child: Text(
//               //                     'Ravpower',
//               //                     style: TextStyle(
//               //                         color: colorButtonsText,
//               //                         fontSize: 12,
//               //                         fontWeight: FontWeight.w500),
//               //                   ),
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //           SizedBox(
//               //             width: 10,
//               //           ),
//               //           GestureDetector(
//               //             onTap: () {
//               //               setState(() {
//               //                 Navigator.of(context).push(MaterialPageRoute(
//               //                     builder: (context) => ProductDescription()));
//               //               });
//               //             },
//               //             child: Container(
//               //               height: 30,
//               //               decoration: BoxDecoration(
//               //                 color: colorButtons,
//               //                 borderRadius: BorderRadius.circular(5),
//               //               ),
//               //               child: Center(
//               //                 child: Padding(
//               //                   padding: const EdgeInsets.all(8.0),
//               //                   child: Text(
//               //                     'Mobile & Tablets',
//               //                     style: TextStyle(
//               //                         color: colorButtonsText,
//               //                         fontSize: 12,
//               //                         fontWeight: FontWeight.w500),
//               //                   ),
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //           SizedBox(
//               //             width: 10,
//               //           ),
//               //           Container(
//               //             height: 30,
//               //             decoration: BoxDecoration(
//               //                 color: colorButtons,
//               //                 borderRadius: BorderRadius.circular(5)),
//               //             child: Center(
//               //               child: Padding(
//               //                 padding: const EdgeInsets.all(8.0),
//               //                 child: Text(
//               //                   'JBL',
//               //                   style: TextStyle(
//               //                       color: colorButtonsText,
//               //                       fontSize: 12,
//               //                       fontWeight: FontWeight.w500),
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //           SizedBox(
//               //             width: 50,
//               //           ),
//               //           GestureDetector(
//               //             onTap: () {
//               //               setState(() {
//               //                 Navigator.of(context).push(MaterialPageRoute(
//               //                     builder: (context) => ProductDescription()));
//               //               });
//               //             },
//               //             child: Container(
//               //               height: 30,
//               //               decoration: BoxDecoration(
//               //                   color: colorButtons,
//               //                   borderRadius: BorderRadius.circular(5)),
//               //               child: Center(
//               //                 child: Padding(
//               //                   padding: const EdgeInsets.all(8.0),
//               //                   child: Text(
//               //                     text,
//               //                     style: TextStyle(
//               //                         color: colorButtonsText,
//               //                         fontSize: 12,
//               //                         fontWeight: FontWeight.w400),
//               //                   ),
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //           SizedBox(
//               //             width: 10,
//               //           ),
//               //         ],
//               //       ),
//               //     ),
//               //   ),
//               // ),
//               //
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.05,
//                 width: MediaQuery.of(context).size.width,
//                 child: TabBar(
//                   controller: tabController,
//                   indicatorSize: TabBarIndicatorSize.tab,
//                   labelColor: Colors.black,
//                   indicatorColor: Colors.red,
//                   tabs: tabs,
//                   labelPadding: EdgeInsets.symmetric(horizontal: 10),
//                   unselectedLabelColor: Colors.grey,
//                   isScrollable: true,
//                   indicatorPadding: EdgeInsets.symmetric(horizontal: 8.0),
//                 ),
//               ),
//               Container(
//                 height: MediaQuery.of(context).size.height*0.4,
//                 width: MediaQuery.of(context).size.width,
//                 child: TabBarView(
//                     controller: tabController,
//                     children: [
//
//                       Container(child: Center(child: Text('no items in EarPhones'))),
//
//                       Container(child: Center(child: Text('no items in HeadPhones'))),
//                       Container(child: Center(child: Text('no items in Speaker'))),
//                       Container(child: Center(child:
//
//                       GridView.builder(
//                         itemCount: 1,
//                         physics: ScrollPhysics(),
//                         shrinkWrap: true,
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisCount: 2, childAspectRatio: 0.7),
//                         itemBuilder: (BuildContext context, int index) {
//                           return CardWidget();
//                         },
//                       ),
//
//                       )),
//                     ]),
//               )
//
//
//
//             ]),
//       ),
//
//
//     );
//   }
// }
//
//
//
// class CardWidget extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     // List<Widget> images = [Image.asset('drawable/images2.jpg'),Image.asset('drawable/images3.jpg'),
//     // Image.asset('drawable/images1.jpg')];
//     //
//     // int index;
//
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         return Padding(
//           padding: EdgeInsets.symmetric(horizontal: 5),
//           child: Card(
//             child: Column(
//               children: [
//                 Align(
//                   alignment: Alignment.topRight,
//                   child: Icon(
//                     Icons.close,
//                     color: Colors.black54,
//                     size: 20,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//
//                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProductDescription()));
//
//                   },
//                   child:
//                   Image.asset('drawable/images1.jpg',
//
//                     height: constraints.maxHeight * 0.45,
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text(
//                       '0',
//                       style:
//                       TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
//                     ),
//                     IconButton(
//                         icon: Image.asset(
//                           'drawable/heart_no_selected.png',
//                           height: constraints.maxHeight * 0.3,
//                           width: constraints.maxWidth * 0.1,
//                         ),
//                         onPressed: () {}),
//                   ],
//                 ),
//                 Text(
//                   'Product Description',
//                   style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.black),
//                 ),
//                 SizedBox(
//                   height: constraints.maxHeight * 0.01,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 8),
//                   child: Text(
//                     'Product currency' " " + 'Product Price',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w900,
//                         fontSize: 15),
//                   ),
//                 ),
//               ],
//             ),
//             elevation: 3,
//             shape:
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//           ),
//         );
//       },
//     );
//   }
// }
