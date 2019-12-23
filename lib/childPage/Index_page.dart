import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'product_page.dart';
import 'my_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}
class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.home),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.group_solid),
      title: Text('产品'),
    ),
    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.person),
      title: Text('我的'),
    ),
  ];

  final List tabBodies = [
    HomePage(),
    ProductPage(),
    MyPage(),
  ];

  int currentIndex = 0;
  var currentPage;
  @override
  void initState() {
    currentPage=tabBodies[currentIndex];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 145, 254, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index){
          setState(() {
            currentIndex = index;
            currentPage = tabBodies[currentIndex];
          });
        },
      ),
      body: currentPage,
    );
  }
}