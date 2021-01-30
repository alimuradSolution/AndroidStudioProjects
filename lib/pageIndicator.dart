// import 'package:flutter/material.dart';
// @override
// class PageIndicator extends StatefulWidget {
//   _PageIndicatorState createState() => _PageIndicatorState();
// }

// class _PageIndicatorState extends State<PageIndicator> {
//   PageController controller = PageController(initialPage: 0);

//   int _currentPage = 0;

//   @override
//   void initState() {
//     super.initState();
//     Timer.periodic(Duration(seconds: 2), (Timer timer) {
//       if (_currentPage < 2) {
//         _currentPage++;
//       } else if (_currentPage == 1) {
//         _currentPage = 2;
//       } else if (_currentPage == 2) {
//         _currentPage--;
//       }

//       controller.animateToPage(
//         _currentPage,
//         duration: Duration(milliseconds: 500),
//         curve: Curves.easeIn,
//       );
//     });
//   }

//   final circleShape = Shape(
//     size: 20,
//     shape: DotShape.Circle,
//     spacing: 8,
//   );

//   Widget buildExampleIndicatorWithShapeAndBottomPos(
//       Shape shape, double bottomPos) {
//     return Positioned(
//       bottom: bottomPos,
//       left: 0,
//       right: 0,
//       child: WormIndicator(
//         length: 3,
//         controller: controller,
//         shape: shape,
//         indicatorColor: Colors.white,
//         color: Colors.grey,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//       children: [
//         Center(
//           child: Container(
//             height: 150,
//             width: double.infinity,
//             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
//             child: PageView(
//               scrollDirection: Axis.horizontal,
//               controller: controller,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       image: DecorationImage(
//                         image: new AssetImage('drawable/images2.jpg'),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       image: DecorationImage(
//                         image: new AssetImage('drawable/images3.jpg'),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       image: DecorationImage(
//                         image: new AssetImage('drawable/images1.jpg'),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//         buildExampleIndicatorWithShapeAndBottomPos(circleShape, 250),
//       ],
//     ));
//   }
// }
