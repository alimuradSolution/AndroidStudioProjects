import 'package:flutter/material.dart';

class MenuButtonDescription extends StatefulWidget {
  @override
  _MenuButtonDescriptionState createState() => _MenuButtonDescriptionState();
}

class _MenuButtonDescriptionState extends State<MenuButtonDescription> {
  String text = 'text';

  bool isPressed = false;
  Color highlightColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Row(
            children: [
              FlatButton(
                onPressed: () {},
                child: Text(
                  'CABLES',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black),
                ),
                shape: Border(bottom: BorderSide(color: Colors.red, width: 1)),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'POWER BANK',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black),
                ),
                shape: Border(bottom: BorderSide(color: Colors.red, width: 1)),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'WIRELESS CHARGER',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black),
                ),
                shape: Border(bottom: BorderSide(color: Colors.red, width: 1)),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  text,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                shape: Border(bottom: BorderSide(color: Colors.red, width: 1)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
