import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urdu_shayari/Screens/navbar.dart';

class LoginPage extends StatelessWidget {
  String labelText;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[800],
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.pinkAccent,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black45,
              ),
            ),
            Text('Poetry App',
                style: GoogleFonts.italiana(
                    textStyle: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                ))),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Textfield(labelText: 'Email Address'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Textfield(labelText: 'Password'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ResetPage()));
                  },
                  child: Text(
                    'Reset Now',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 200,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NavBar()));
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                  child: Text(
                    'Register Now',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

class ResetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 50,
        ),
        CircleAvatar(
          radius: 31,
          backgroundColor: Colors.deepPurpleAccent,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.pinkAccent,
            child: CircleAvatar(
              radius: 27,
              backgroundColor: Colors.black54,
            ),
          ),
        ),
        Text('Poetry App',
            style: GoogleFonts.italiana(
                textStyle: TextStyle(
              color: Colors.white70,
              fontSize: 20,
            ))),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Textfield(
              labelText: 'Phone Number',
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage())),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.pinkAccent),
              child: Center(
                  child: Text(
                '  RESET   ',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
        ),
      ]),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 31,
                backgroundColor: Colors.deepPurpleAccent,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.pinkAccent,
                  child: CircleAvatar(
                    radius: 27,
                    backgroundColor: Colors.black54,
                  ),
                ),
              ),
              Text('Poetry App',
                  style: GoogleFonts.italiana(
                      textStyle: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                  ))),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Textfield(labelText: 'First Name'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Textfield(labelText: 'Last Name'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Textfield(labelText: 'Email Address'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Textfield(labelText: 'Password'),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 250,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  color: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      'Login Now',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ]),
      ),
    );
  }
}

class Textfield extends StatelessWidget {
  const Textfield({
    Key key,
    @required this.labelText,
  }) : super(key: key);

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.black12,
      cursorHeight: 25,
      decoration: InputDecoration(
        hintText: labelText,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        fillColor: Colors.grey,
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
