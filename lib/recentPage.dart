import 'package:flutter/material.dart';

class RecentPage extends StatelessWidget {
  String recentpage = 'الصفحة الأخيرة الخاصة بك';
  String noRecentItems = 'لا توجد عناصر حديثة';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          recentpage,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: Container(),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Text(
          noRecentItems,
          style: TextStyle(
              color: Colors.black45, fontWeight: FontWeight.w500, fontSize: 18),
        ),
      ),
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
    );
  }
}
