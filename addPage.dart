import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urdu_shayari/Widgets/add2Cart.dart';
import 'package:urdu_shayari/Widgets/cartWidget.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Icon(
            Icons.cancel,
            size: 35,
            color: Colors.black54,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Stack(children: [
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black54,
                  size: 35,
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.deepOrangeAccent,
                    ),
                    child: Center(
                        child: Text('0',
                            style: GoogleFonts.aBeeZee(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                )))),
                  ),
                ),
              ]),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),

        body:SingleChildScrollView(
          child: Column(
            children: [

              Center(child: Text('Cart is Empty',
              style: TextStyle(fontSize: 40),),
              )
            ],
          ),
        )



    );

  }
}
