import 'package:flutter/material.dart';
import 'screens/timelineScreen.dart';
import 'screens/cityScreen.dart';
import 'screens/districtScreen.dart';
import 'screens/townScreen.dart';
import 'screens/additionalScreen.dart';
import 'constants.dart';

//메인 탭바

class MainTabbar extends StatefulWidget {
  @override
  _MainTabbarState createState() => _MainTabbarState();
}

class _MainTabbarState extends State<MainTabbar> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Material(
            color: kTabbarColor, //탭바 색상
            child: TabBar(
              isScrollable: true,
              controller: _tabController,
              labelColor: kTabbarLabelColor,
              indicatorColor: kTabbarIndicatorColor,
              unselectedLabelColor: kTabbarUnselectedLabelColor,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Center(child: Tab(text: '타임라인')),
                Center(child: Tab(text: '인천')),
                Center(child: Tab(text: '서구')),
                Center(child: Tab(text: '청라국제도시')),
                Center(child: Tab(text: '청라래미안2차'))
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                TimelineScreen(),
                CityScreen(),
                DistrictScreen(),
                TownScreen(),
                AdditionalScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
