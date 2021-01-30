import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pages_app/accountPage.dart';
import 'package:pages_app/jblDescription.dart';
import './pageIndicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:pages_app/blogPage.dart';
import 'package:pages_app/cartPage.dart';
import 'package:pages_app/homePage.dart';
import 'package:pages_app/messagePage.dart';
import 'dart:async';

import 'package:worm_indicator/shape.dart';

import 'package:worm_indicator/worm_indicator.dart';

import 'package:pages_app/productDescription.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:pages_app/recentPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<Tab> subTabs = [
    Tab(
      child: Text(
        'CABLES',
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
      ),
    ),
    Tab(
      child: Text(
        'POWER BANKS',
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
      ),
    ),
    Tab(
      child: Text(
        'WIRELESS CHARGER',
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
      ),
    ),
    Tab(
      child: Text(
        'الكل',
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
      ),
    )
  ];

  List<Tab> tabsMain = [
    Tab(
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Mobile Accessaries',
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    ),
    Tab(
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Ravpower',
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    ),
    Tab(
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Mobile & Tablets',
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    ),
    Tab(
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'JBL',
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    ),
    Tab(
      child: SizedBox(
        width: 50,
      ),
    ),
    Tab(
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            'الكل',
            style: TextStyle(
                color: Colors.black45,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    ),
  ];
  TabController tabController;
  TabController tabController1;
  TabController tabController2;

  List<Widget> items = [CardWidget()];

  PageController controller = PageController(initialPage: 0);
  int _currentPage = 0;
  List<Widget> pageList = List<Widget>();

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: tabsMain.length, vsync: this, initialIndex: 5);
    tabController1 =
        TabController(length: subTabs.length, vsync: this, initialIndex: 3);
    tabController2 = TabController(length: 4, vsync: this, initialIndex: 3);

    Timer.periodic(
      Duration(seconds: 2),
      (Timer timer) {
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
      },
    );
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
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
        indicatorColor: Colors.white,
        color: Colors.grey,
      ),
    );
  }

  int selectedPage = 0;
  int index;

  double productPrice = 50.00;
  String productCurrency = '\$';
  String productDescription = 'وصف...';
  String search = 'بحث';
  String home = 'الصفحة الرئيسية';
  String text = 'الكل';
  String msgIcongrey = 'messae_gray.png';
  String msgIconblack = 'message.png';
  String cartIcongrey = 'cart_gray.png';
  String cartIconblack = 'cart.png';
  String homeIcongrey = 'home_gray.png';
  String homeIconblack = 'home.png';
  String recentIcongrey = 'clock_gray.png';
  String recentIconblack = 'clock.png';
  String blogIcongrey = 'blog_gray.png';
  String blogIconblack = 'blog.png';

  Color colorButtons = Colors.black12;
  Color colorButtonsText = Colors.grey[700];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          leadingWidth: 30,
          leading: Padding(
            padding: EdgeInsets.zero,
            child: Icon(
              Icons.favorite_outline,
              color: Colors.black,
              size: 25,
            ),
          ),
          title: Container(
            height: 35,
            // width: constraints.maxWidth,
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // SizedBox(
                //   width: width * 0.2,
                // ),
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        // fillColor: Colors.black12,
                        hintText: search,
                        hintStyle: TextStyle(
                            color: Colors.black26,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: -0, vertical: 8.5),
                        // filled: true,
                        border: InputBorder.none
                        // suffixIcon: Icon(
                        //   Icons.search,
                        //   color: Colors.black54,
                        // ),
                        ),
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.black26,
                ),
                SizedBox(
                  width: width * 0.025,
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10, left: 8),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AccountPage(),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.black87,
                    child: Icon(Icons.person),
                  ),
                ),
              ),
            ),
          ],
          toolbarHeight: 50,
          elevation: 0.0,
          titleSpacing: 0),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 140,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: new AssetImage('drawable/images2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: new AssetImage('drawable/images3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: new AssetImage('drawable/images1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                buildExampleIndicatorWithShapeAndBottomPos(circleShape, 15),
              ],
            ),
            CupertinoScrollbar(
              thickness: 5.5,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Theme(
                    data: ThemeData(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width,
                      child: TabBar(
                        controller: tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Colors.black,
                        indicatorColor: Colors.transparent,
                        tabs: tabsMain,
                        labelPadding: EdgeInsets.symmetric(horizontal: 5),
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        indicatorPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width,
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children: [
                    // Container(
                    //     child: Center(child: Text('no items in EarPhones'))),
                    Container(
                      child: Column(
                        children: [
                          Text(text, style: TextStyle(fontSize: 15)),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 1,
                            width: width * 0.2,
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  GridView.builder(
                                    itemCount: 2,
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 0.8),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return CardWidget(
                                        imagePath: 'drawable/images3.jpg',
                                      );
                                    },
                                  ),
                                  GridView.builder(
                                    itemCount: 2,
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 0.8),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return CardWidget(
                                        imagePath: 'drawable/images4.jpg',
                                      );
                                    },
                                  ),
                                  GridView.builder(
                                    itemCount: 2,
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 0.8),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return CardWidget(
                                        imagePath: 'drawable/images5.jpg',
                                      );
                                    },
                                  ),
                                  GridView.builder(
                                    itemCount: 2,
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 0.8),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return CardWidget(
                                        imagePath: 'drawable/images6.jpg',
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Theme(
                      data: ThemeData(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          accentColor: Colors.purple[200]),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TabBar(
                                controller: tabController1,
                                indicatorColor: Colors.red,
                                labelColor: Colors.black,
                                unselectedLabelColor: Colors.grey,
                                indicatorPadding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 5),
                                indicatorSize: TabBarIndicatorSize.tab,
                                labelPadding: EdgeInsets.all(5),
                                tabs: subTabs,
                                isScrollable: true,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                width: MediaQuery.of(context).size.width,
                                child: TabBarView(
                                    physics: NeverScrollableScrollPhysics(),
                                    controller: tabController1,
                                    children: [
                                      Container(
                                        child: Center(
                                            child: Text('no items in Cables')),
                                      ),
                                      Container(
                                        child: Center(
                                            child:
                                                Text('no items in PowerBank')),
                                      ),
                                      Container(
                                        child: Center(
                                            child: Text(
                                                'no items in WirelessCharger')),
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        physics: ScrollPhysics(),
                                        child: GridView.builder(
                                          itemCount: 10,
                                          physics: ScrollPhysics(),
                                          shrinkWrap: true,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  childAspectRatio: 0.8),
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return CardWidget(
                                              imagePath: 'drawable/images2.jpg',
                                            );
                                          },
                                        ),
                                      ),
                                    ]),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(text, style: TextStyle(fontSize: 15)),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 1,
                            width: width * 0.2,
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    physics: ScrollPhysics(),
                                    child: GridView.builder(
                                      itemCount: 10,
                                      physics: ScrollPhysics(),
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              childAspectRatio: 0.8),
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return CardWidget(
                                          imagePath: 'drawable/images3.jpg',
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Theme(
                      data: ThemeData(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          accentColor: Colors.purple[200]),
                      child: Container(
                        child: Column(
                          children: [
                            TabBar(
                              tabs: [
                                Tab(
                                  child: Text(
                                    'EARPHONES',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    'HEADPHONES',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    'SPEAKER',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    'text',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                              indicatorColor: Colors.red,
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.grey,
                              isScrollable: true,
                              indicatorPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              indicatorSize: TabBarIndicatorSize.tab,
                              labelPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                              controller: tabController2,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              child: TabBarView(
                                  physics: NeverScrollableScrollPhysics(),
                                  controller: tabController2,
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text('no items om EarPhones')),
                                    ),
                                    Container(
                                      child: Center(
                                          child:
                                              Text('no items in Headphones')),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text('no items in Speaker')),
                                    ),
                                    Container(
                                      child: GridView.builder(
                                        itemCount: 1,
                                        physics: ScrollPhysics(),
                                        shrinkWrap: true,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                                childAspectRatio: 0.8),
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return CardWidget(
                                            imagePath: 'drawable/images4.jpg',
                                          );
                                        },
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    // ),

                    Container(child: Center(child: Text(''))),
                    Container(
                      height: double.infinity,
                      child: Column(
                        children: [
                          Text(text, style: TextStyle(fontSize: 15)),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 1,
                            width: width * 0.2,
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GridView.builder(
                                    itemCount: 2,
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 0.8),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return CardWidget(
                                          imagePath: 'drawable/images1.jpg');
                                    },
                                  ),
                                  GridView.builder(
                                    itemCount: 2,
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 0.8),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return CardWidget(
                                        imagePath: 'drawable/images2.jpg',
                                      );
                                    },
                                  ),
                                  GridView.builder(
                                    itemCount: 2,
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 0.8),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return CardWidget(
                                        imagePath: 'drawable/images3.jpg',
                                      );
                                    },
                                  ),
                                  GridView.builder(
                                    itemCount: 2,
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 0.8),
                                    itemBuilder: (context, index) {
                                      return CardWidget(
                                        imagePath: 'drawable/images4.jpg',
                                      );
                                    },
                                  ),
                                  GridView.builder(
                                    itemCount: 2,
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 0.8),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return CardWidget(
                                        imagePath: 'drawable/images5.jpg',
                                      );
                                    },
                                  ),
                                  GridView.builder(
                                    itemCount: 2,
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 0.8),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return CardWidget(
                                        imagePath: 'drawable/images6.jpg',
                                      );
                                    },
                                  ),
                                  GridView.builder(
                                    itemCount: 2,
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 0.8),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return CardWidget(
                                        imagePath: 'drawable/images7.jpg',
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String imagePath;

  CardWidget({Key key, @required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List<Widget> images = [Image.asset('drawable/images2.jpg'),Image.asset('drawable/images3.jpg'),
    // Image.asset('drawable/images1.jpg')];
    //
    // int index;
    String productDescription = 'وصف...';

    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Card(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.close,
                    color: Colors.black54,
                    size: 20,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductDescription()));
                  },
                  child: Image.asset(
                    imagePath,
                    height: constraints.maxHeight * 0.45,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '0',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    Container(
                      padding: EdgeInsets.zero,
                      width: 40,
                      child: IconButton(
                          // icon: Image.asset(
                          //   'drawable/heart_no_selected.png',
                          //   height: constraints.maxHeight * 0.3,
                          //   width: constraints.maxWidth * 0.1,
                          // ),

                          icon: Icon(
                            Icons.favorite_border,
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
                Text(
                  productDescription,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                // SizedBox(
                //   height: constraints.maxHeight * 0.01,
                // ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    '\$' + '50.00',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        );
      },
    );
  }
}
