import 'package:flutter/material.dart';
import 'package:urdu_shayari/Widgets/add2Cart.dart';
import 'package:urdu_shayari/Screens/addPage.dart';
import 'package:urdu_shayari/Screens/favoritePage.dart';
import 'package:urdu_shayari/Screens/homepage.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [HomePage(), AddPage(), FavoritePage()];

    void onTabTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

    return Scaffold(
      body: _children.elementAt(_currentIndex),

      bottomNavigationBar: SizedBox(
        height: 71,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 20.1,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  size: 30,
                ),
                label: ''),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: onTabTapped,
        ),
      ),

      // body: _children[_currentIndex],
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.white,
      //   child: Row(
      //     mainAxisSize: MainAxisSize.max,
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       IconButton(
      //           icon: Icon(
      //             Icons.home_filled,
      //             color: Colors.black,
      //           ),
      //           disabledColor: Colors.grey,
      //           onPressed: () {
      //             onTabTapped;
      //           }),
      //       CircleAvatar(
      //         radius: 20.1,
      //         backgroundColor: Colors.black,
      //         child: CircleAvatar(
      //           radius: 20,
      //           backgroundColor: Colors.white,
      //           child: IconButton(
      //               icon: Icon(Icons.add, color: Colors.grey),
      //               disabledColor: Colors.grey,
      //               onPressed: () => onTabTapped),
      //         ),
      //       ),
      //       IconButton(
      //           icon: Icon(
      //             Icons.favorite,
      //             color: Colors.grey,
      //           ),
      //           disabledColor: Colors.grey,
      //           onPressed: () => onTabTapped),
      //     ],
      //   ),
      // ),
    );
  }
}
