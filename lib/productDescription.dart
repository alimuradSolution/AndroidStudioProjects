import 'dart:async';
import 'package:worm_indicator/shape.dart';

import 'package:worm_indicator/worm_indicator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:pages_app/loginPage.dart';

class ProductDescription extends StatefulWidget {
  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  String addtoCart = 'الوصاية أو غير';
  int quantity = 1;
  int value = 0;
  int _value;

  String quantityAvailable = 'Quantity ';
  String productName = 'الوصاية أو غير';
  int heartCount = 1;
  String productPrice = '50.00';
  String priceCurrency = '\$';
  String afterPrice = 'القيود';
  String specs = ' متمتع بالحكم الذاتي';
  String descriptionTitle = 'و كانت سيادته خاضعة لأي قيد';
  String description =
      'المادة 1 يولد جميع الناس أحرارًا متساوين في\n الكرامة والحقوق. وقد وهبوا عقلاً وضميرًا وعليهم أن يعامل \nبعضهم بعضًا بروح الإخا الدين أو الرأي السياسي أو أي \nرأي آخر، أو الأصل الوطني أو الإجتماعي أو الثروة أو الميلاد\n أو أي وضع آخر، دون أية تفرقة بين الرجال والنساء. وفضلاً \nعما تقدم فلن يكون هناك أي تمييز أساسه الوضع السياسي أو\n القانوني أو الدولي لبلد أو البقعة التي ينتمي إليها الفر\nد سواء كان هذا البلد أو تلك البقعة\n مستقلاً أو تحت الوصاية أو غير متمتع بالحكم الذاتي أو كانت سيادته خاضعة لأي قيد من القيود.المادة\n يولد جميع الناس أحرارًا متساوين في الكرامة والحقوق. وقد وهبوا \nعقلاً وضميرًا وعليهم أن يعامل بعضهم بعضًا بروح الإخا الدين أو الرأي\n السياسي أو أي رأي آخر، أو الأصل الوطني أو الإجتماعي أو الثروة أو الميلاد \nأو أي وضع آخر، دون أية تفرقة بين الرجال والنساء.\n وفضلاً عما تقدم فلن يكون هناك أي تمييز أساسه الوضع\n السياسي أو القانوني أو الدولي لبلد أو البقعة\n التي ينتمي إليها الفرد سواء كان هذا البلد أو تلك البقعة مستقلا\nً أو تحت الوصاية أو غير متمتع بالحكم الذاتي\n أو كانت سيادته خاضعة لأي قيد من القيود.المادة 1\n يولد جميع الناس أحرارًا متساوين في الكرامة وا\nلحقوق. وقد وهبوا عقلاً وضميرًا وعليهم أن يعامل بعضهم بعضًا\n بروح الإخا الدين أو الرأي السياسي أو أي رأي\n آخر، أو الأصل الوطني أو الإجتماعي أو\n الثروة أو الميلاد أو أي وضع آخر، دون \nأية تفرقة بين الرجال والنساء. وفضلاً عما\n تقدم فلن يكون هناك أي تمييز أساسه الوضع\n السياسي أو القانوني أو الدولي لبلد أو البقعة\n التي ينتمي إليها الفرد سواء كان هذا البلد\n أو تلك البقعة مستقلاً أو تحت الوصاية أو غير\n متمتع بالحكم الذاتي \n و كانت سيادته خاضعة لأي قيد من القيود.';

  PageController controller = PageController(initialPage: 0);

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  final circleShape = Shape(
    size: 15,
    shape: DotShape.Circle,
    spacing: 10,
  );

  Widget buildExampleIndicatorWithShapeAndBottomPos(
      Shape shape, double bottomPos) {
    return Positioned(
      bottom: bottomPos,
      left: 0,
      right: 0,
      child: WormIndicator(
        length: 3,
        controller: controller,
        shape: shape,
        indicatorColor: Colors.deepPurpleAccent,
        color: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        centerTitle: true,
        title: Text(
          productName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 350,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(1)),
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      controller: controller,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1),
                            image: DecorationImage(
                              image: new AssetImage('drawable/images2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1),
                            image: DecorationImage(
                              image: new AssetImage('drawable/images3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1),
                            image: DecorationImage(
                              image: new AssetImage('drawable/images1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  buildExampleIndicatorWithShapeAndBottomPos(circleShape, 15),
                  Positioned(
                    right: 0,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Row(
                        children: [
                          Text(
                            '1',
                            style: TextStyle(
                                fontSize: 25, color: Colors.black87),
                          ),
                          Icon(
                            Icons.favorite_outline,
                            size: 30,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          priceCurrency + productPrice,
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          afterPrice,
                          style: TextStyle(fontWeight: FontWeight.w600),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      specs,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 1,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 1,
                          color: Colors.black26,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'الوصاية',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'drawable/color_img1.jpg',
                              width: 45,
                              height: 55,
                            ),
                            Text(
                              'Silver',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'drawable/color_img2.jpg',
                              width: 45,
                              height: 55,
                            ),
                            Text(
                              'Red',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Text(
                            descriptionTitle,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                            textDirection: TextDirection.rtl,
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(right: 5,left: 5),
                      child: Text(
                        description,
                        style: TextStyle(color: Colors.black45, fontSize: 12),
                        textDirection: TextDirection.rtl,
                      ),
                    ),

                  ],
                ),

              ),
              SizedBox(height: 80),

            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            color: Colors.white,
            height: 65,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 50,
                    width: 155,
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ));
                        });
                      },
                      color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            addtoCart,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.add_shopping_cart_outlined,
                            size: 25,
                          )
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 155,
                    child: RaisedButton(
                      splashColor: Colors.black12,
                      highlightElevation: 2,
                      highlightColor: Colors.black12,
                      onPressed: () {},
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          DropdownButton(
                              items: [
                                DropdownMenuItem(
                                  child: Text("1"),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text("2"),
                                  value: 2,
                                ),
                                DropdownMenuItem(child: Text("3"), value: 3),
                                DropdownMenuItem(child: Text("4"), value: 4),
                                DropdownMenuItem(child: Text("5"), value: 5),
                                DropdownMenuItem(child: Text("6"), value: 6),
                                DropdownMenuItem(child: Text("7"), value: 7),
                                DropdownMenuItem(child: Text("8"), value: 8),
                                DropdownMenuItem(child: Text("9"), value: 9),
                                // DropdownMenuItem(child: Text("10"), value: 10),
                                // DropdownMenuItem(child: Text("11"), value: 11),
                                // DropdownMenuItem(child: Text("12"), value: 12),
                                // DropdownMenuItem(child: Text("13"), value: 13),
                                // DropdownMenuItem(child: Text("14"), value: 14),
                                // DropdownMenuItem(child: Text("15"), value: 15),
                                // DropdownMenuItem(child: Text("16"), value: 16),
                                // DropdownMenuItem(child: Text("17"), value: 17),
                                // DropdownMenuItem(child: Text("18"), value: 18),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              }),
                          Text(_value.toString()),
                          SizedBox(
                            width: 10,
                          ),
                          Text(quantityAvailable),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Colors.red, width: 1.2)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
