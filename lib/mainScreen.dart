import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'mainTabbar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    MainTabbar(),
    Center(child: Text('검색창')),
    Center(child: Text('채팅메뉴')),
    Center(child: Text('알림')),
    Center(child: Text('글쓰기 창')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: kBottomNaviBarColor
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.cyan,
          items: [
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.comments), label: 'Chat'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.bell), label: 'Notification'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.cog), label: 'Settings'),
          ],
          currentIndex: _selectedIndex,
          elevation: 10,
          selectedItemColor: kBottomNaviBarSelectedColor,
          unselectedItemColor: kBottomNaviBarUnselectedColor,
          onTap: _onItemTapped,
        ),
      )


    );
  }
}
