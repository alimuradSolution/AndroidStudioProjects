import 'package:flutter/material.dart';
import 'package:pages_app/registerPage.dart';
import 'package:pages_app/loginPage.dart';

class AccountPage extends StatelessWidget {
  String accountInfo = 'مرحبًا بك في حسابك ';
  String makeAccount = 'انشئ حساب';
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        actions: [
          RotationTransition(
            turns: AlwaysStoppedAnimation(180 / 360),
            child: Image.asset('drawable/back.png',
                height: 20, width: 20, color: Colors.black),
          ),
          SizedBox(
            width: 20,
          ),
        ],
        title: Text(
          accountInfo,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterPage(),
                ));
          },
          child: Container(
            height: 45,
            width: media.width * 0.65,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: media.width * 0.1,
                ),
                Text(
                  makeAccount,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15),
                  child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.black87,
                      child: Icon(
                        Icons.person,
                        color: Colors.red,
                        size: 30,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
