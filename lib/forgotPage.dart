import 'package:flutter/material.dart';
import 'package:pages_app/spinnerScreen.dart';

class ForgotPage extends StatelessWidget {
  String phoneNumber = 'أدخل رقم الهاتف';
  String phonePlaceholder = '123456789';
  String codeSent = 'تم إرسال الرمز إلى رقم الهاتف';
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          RotationTransition(
            turns: AlwaysStoppedAnimation(180 / 360),
            child: Image.asset(
              'drawable/back.png',
              color: Colors.black,
              height: 17,
              width: 17,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.5, right: width * 0.025),
              child: Text(
                phoneNumber,
                textAlign: TextAlign.left,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: height * 0.035,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.02),
              child: Container(
                height: 45,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  cursorColor: Colors.blue,
                  cursorHeight: 25,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: phonePlaceholder,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide:
                            BorderSide(color: Colors.black, width: 1.1)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(color: Colors.black, width: 1.1),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              height: 50,
              width: width * 0.95,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SpinnerScreen(),
                      ));
                },
                color: Colors.red,
                child: Text(
                  codeSent,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}
