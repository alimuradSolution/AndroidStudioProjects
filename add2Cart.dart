import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Add2Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Added();
  }
}

class Added extends StatelessWidget {
  Added({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Center(
        child: Text(
          'Your Cart is Empty!',
          style: GoogleFonts.aBeeZee(
              textStyle: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 35,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
