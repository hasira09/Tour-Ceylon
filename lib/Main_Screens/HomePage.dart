import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 2;


  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      SvgPicture.asset("assets/Icons/Ride.svg"),
      SvgPicture.asset("assets/Icons/Location.svg"),
      SvgPicture.asset("assets/Icons/Home.svg"),
      SvgPicture.asset("assets/Icons/Hotel.svg"),
      SvgPicture.asset("assets/Icons/Protect.svg"),
    ];

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Home Page"),
        elevation: 0,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        height: 60,
        index: index,
        items: items,
        backgroundColor: Colors.transparent,
        color: Colors.black,
      ),
    );
  }

}
