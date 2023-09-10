import 'package:design_task/screens/main_screen/main_Screen.dart';
import 'package:design_task/screens/my_account_screen/my_account_Screen.dart';
import 'package:design_task/screens/services_screen/Services_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List SomeScreens = [
  my_account_screen(),
  main_Screen(),
  Services_Screen(),
];

class bottom_nav_bar_screen extends StatefulWidget {
  _bottom_nav_bar_screen createState() => _bottom_nav_bar_screen();
}

class _bottom_nav_bar_screen extends State<bottom_nav_bar_screen> {
  int _currentindex = 1;

  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SomeScreens.elementAt(_currentindex),
      bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(22), topLeft: Radius.circular(22)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(22), topLeft: Radius.circular(22)),
              child: BottomNavigationBar(
                onTap: (int index) {
                  setState(() {
                    _currentindex = index;
                  });
                },
                currentIndex: _currentindex,
                items: [
                  BottomNavigationBarItem(
                      icon: CircleAvatar(
                        radius: 19,
                        backgroundColor: _currentindex == 0
                            ? const Color.fromRGBO(44, 135, 97, 0.21)
                            : Colors.white,
                        child: const ImageIcon(
                          AssetImage(
                              "assets/images/bottom_nav_icons/PngItem_5768680 2.png"),
                          color: Color(0xff255F3F),
                        ),
                      ),
                      label: "حسابي"),
                  BottomNavigationBarItem(
                      icon: CircleAvatar(
                          radius: 19,
                          backgroundColor: _currentindex == 1
                              ? const Color.fromRGBO(44, 135, 97, 0.21)
                              : Colors.white,
                          child: const ImageIcon(
                            AssetImage(
                                "assets/images/bottom_nav_icons/1976053_home_home page_homepage_homepages_icon 2.png"),
                            color: Color(0xff255F3F),
                          )),
                      label: "الرئيسية"),
                  BottomNavigationBarItem(
                      icon: CircleAvatar(
                          radius: 19,
                          backgroundColor: _currentindex == 2
                              ? const Color.fromRGBO(44, 135, 97, 0.21)
                              : Colors.white,
                          child: const ImageIcon(
                            AssetImage(
                                "assets/images/bottom_nav_icons/22607-200 2.png"),
                            color: Color(0xff255F3F),
                          )),
                      label: "الخدمات"),
                ],
              ))),
    );
  }
}
