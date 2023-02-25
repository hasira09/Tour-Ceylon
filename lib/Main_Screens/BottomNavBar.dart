import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '1RidePage.dart';
import '2LocationPage.dart';
import '3HomePage.dart';
import '4HotelPage.dart';
import '5ProtectPage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List Screens = [
    RidePage(),
    LocationPage(),
    HomePage(),
    HotelPage(),
    ProtectPage(),
  ];

  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double navBarHeight = size.height * 0.07;
    double iconSize = size.width * 0.06;

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        items: [
          SvgPicture.asset(
            "assets/Icons/Ride.svg",
            height: iconSize,
          ),
          SvgPicture.asset(
            "assets/Icons/Location.svg",
            height: iconSize,
          ),
          SvgPicture.asset(
            "assets/Icons/Home.svg",
            height: iconSize,
          ),
          SvgPicture.asset(
            "assets/Icons/Hotel.svg",
            height: iconSize,
          ),
          SvgPicture.asset(
            "assets/Icons/Protect.svg",
            height: iconSize,
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 350),
        height: navBarHeight,
        backgroundColor: Colors.transparent,
        color: Colors.black,
      ),
      body: Screens[_selectedIndex],
    );
  }
}