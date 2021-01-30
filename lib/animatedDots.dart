import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dots extends StatefulWidget {
  @override
  _DotsState createState() => _DotsState();
}

class _DotsState extends State<Dots> {
  final controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: PageView(
                  controller: controller,
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),

                // Image.asset('drawable/download1.jpg'),
                // Image.asset('drawable/download1.jpg'),
              ),
              SizedBox(height: 16),
              Container(
                child: AnimatedSmoothIndicator(
                  // controller: controller,
                  activeIndex: 0,
                  axisDirection: Axis.horizontal,
                  count: 3,

                  effect: WormEffect(
                    offset: 0.7,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
