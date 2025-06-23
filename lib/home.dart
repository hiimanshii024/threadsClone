import 'package:flutter/material.dart';
import 'package:threads/screens/activitypage.dart';
import 'package:threads/screens/homepage.dart';
import 'package:threads/screens/postpage.dart';
import 'package:threads/screens/profilepage.dart';
import 'package:threads/screens/searchpage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int selectedIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          //backgroundColor: Colors.black,
          body: _mainBody(),
        ));
  }

  Widget _mainBody(){
    return Column(
      children: [
        _body(),
        _bottomBar(),
      ],
    );
  }

  Widget _body() {
    return Expanded(
      child: PageView(

        controller: pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          selectedIndex = index;
          setState(() {});
        },
        children: [
          HomePage(),
          SearchPage(),
          PostPage(),
          ActivityPage(),
          ProfilePage(),
        ],
      ),
    );
  }

  Widget _bottomBar() {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          menuItem(Icons.home_filled,() {
            selectedIndex = 0;
            pageController.jumpToPage(selectedIndex);
            setState(() {});
          }, selectedIndex == 0),
          menuItem(Icons.search_rounded,  () {
            selectedIndex = 1;
            pageController.jumpToPage(selectedIndex);
            setState(() {});
          }, selectedIndex == 1),
          menuItem(Icons.add_outlined,  () {
            selectedIndex = 2;
            pageController.jumpToPage(selectedIndex);
            setState(() {});
          }, selectedIndex == 2),
          menuItem(Icons.favorite_border_rounded,  () {
            selectedIndex = 3;
            pageController.jumpToPage(selectedIndex);
            setState(() {});
          }, selectedIndex == 3),
          menuItem(Icons.people_rounded, () {
            selectedIndex = 4;
            pageController.jumpToPage(selectedIndex);
            setState(() {});
          }, selectedIndex == 4),

        ],
      ),
    );
  }

  Widget menuItem(
      IconData icon, Function clickFun, bool isSelected) {
    return Expanded(
      child: InkWell(
        onTap: () {
          clickFun();
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.blueAccent : Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
