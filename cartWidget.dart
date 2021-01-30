// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CartWidget extends StatelessWidget {
//   String productName = 'product name';
//
//   String productPrice = '680';
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//           child: CartAdd(productName: productName, productPrice: productPrice),
//         ),
//       ),
//     );
//   }
// }
//
// class CartAdd extends StatelessWidget {
//   const CartAdd({
//     Key key,
//     @required this.productName,
//     @required this.productPrice,
//   }) : super(key: key);
//
//   final String productName;
//   final String productPrice;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.white,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: CircleAvatar(
//               radius: 30,
//               backgroundColor: Colors.pinkAccent,
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: ClipRRect(
//                     borderRadius: BorderRadius.circular(50),
//                     child: Image.asset(
//                       'drawable/img4.jpg',
//                       height: 50,
//                       width: 50,
//                     )),
//               ),
//             ),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 productName,
//                 style: TextStyle(
//                   color: Colors.blue[800],
//                 ),
//               ),
//               Row(
//                 children: [
//                   Text(
//                     '\$',
//                     style:
//                         TextStyle(color: Colors.blue[800], fontSize: 10),
//                   ),
//                   Text(
//                     productPrice,
//                     style: TextStyle(
//                         color: Colors.blue[900],
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   )
//                 ],
//               )
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//
//                   height: 18,
//                   width: 18,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(50),
//                     boxShadow: [BoxShadow(color: Colors.black12,offset: Offset(0,0.7),
//                     blurRadius: 5)]
//                   ),
//                   child: Center(child: Text('-',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))
//                 ),
//                 Text('1',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold,fontSize: 20),),
//                 Container(
//                   height: 18,
//                   width: 18,
//                   decoration: BoxDecoration(
//                       color: Colors.blue[300],
//                       borderRadius: BorderRadius.circular(50),
//                       boxShadow: [BoxShadow(color: Colors.black12,offset: Offset(0,0.7),
//                           blurRadius: 5)]
//                   ),
//                   child: Icon(
//                     Icons.add,
//                     color: Colors.black,
//                     size: 20,
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
