import 'package:flutter/material.dart';
import 'package:mountain/Screen/HomePage.dart';
import 'package:mountain/Screen/Navbar/bar_page.dart';
import 'package:mountain/Screen/Navbar/my_page.dart';
import 'package:mountain/Screen/Navbar/search_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.black12.withOpacity(0.2),
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
              label: 'Bar', icon: Icon(Icons.bar_chart)),
          BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: 'My', icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
