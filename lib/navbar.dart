import 'package:flutter/material.dart';
import 'package:pages_app/blogPage.dart';
import 'package:pages_app/cartPage.dart';
import 'package:pages_app/homePage.dart';
import 'package:pages_app/messagePage.dart';
import 'package:pages_app/productDescription.dart';
import 'package:pages_app/recentPage.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedPage = 2;
  List<Widget> pageList = List<Widget>();

  @override
  void initState() {
    pageList.add(MessagePage());
    pageList.add(CartPage());
    pageList.add(HomePage());
    pageList.add(RecentPage());
    pageList.add(BlogPage());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedPage,
        children: pageList,
      ),
      bottomNavigationBar: SizedBox(
        height: 55,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('drawable/messae_gray.png'),
                size: 45,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('drawable/cart_gray.png'),
                size: 45,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('drawable/home_gray.png'),
                size: 45,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('drawable/clock_gray.png'),
                size: 45,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'drawable/blog_gray.png',
                ),
                size: 45,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedPage,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          elevation: 1,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }
}
