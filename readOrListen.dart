// import 'package:flutter/material.dart';

// class ReadListen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'The Sun and Her Flowers',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               child: Text(
//                 'Lorem Ipsum is simply dummy text of the printing and \ntypesetting industry. Lorem Ipsum has been the industry\'s standard \ndummy text ever since the 1500s, when an unknown printer took\n a galley of type and scrambled it to make\n a type specimen book. It has survived not only five centuries\n, but also the leap into electronic typesetting\n, remaining essentially unchanged. It \nwas popularised in the 1960s with the release\n of Letraset sheets containing Lorem Ipsum\n passages, and more recently with deskt\nop publishing software like\n Aldus PageMaker including versions of Lorem Ipsum\n',
//               ),
//             ),
//             Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     height: 40,
//                     width: 120,
//                     decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(blurRadius: 10, color: Colors.blueAccent)
//                       ],
//                       color: Colors.blue,
//                       borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(45),
//                           topLeft: Radius.circular(45)),
//                     ),
//                     child: Center(
//                         child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Read',
//                           style: TextStyle(
//                               color: Colors.white, fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(width: 10),
//                         Icon(
//                           Icons.chrome_reader_mode_outlined,
//                           color: Colors.white,
//                           size: 20,
//                         ),
//                       ],
//                     )),
//                   ),
//                   Container(
//                     height: 40,
//                     width: 120,
//                     decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(blurRadius: 10, color: Colors.redAccent)
//                       ],
//                       color: Colors.redAccent,
//                       borderRadius: BorderRadius.only(
//                           bottomRight: Radius.circular(45),
//                           topRight: Radius.circular(45)),
//                     ),
//                     child: Center(
//                         child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Listen',
//                           style: TextStyle(
//                               color: Colors.white, fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(width: 10),
//                         Icon(
//                           Icons.headset,
//                           color: Colors.white,
//                           size: 20,
//                         ),
//                       ],
//                     )),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
