import 'dart:async';
import 'package:flutter/material.dart';

class SScreen2 extends StatefulWidget {
  @override
  State<SScreen2> createState() => _SScreen2State();
}

class _SScreen2State extends State<SScreen2> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: Container(
            height: double.infinity,
            padding: EdgeInsets.all(35),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/Logos/TC_Logo2.png"),
                SizedBox(height: 50),
                Container(
                  child: Image.asset("assets/Other/Intro1.png"),
                ),
                SizedBox(height: 85),
                Container(
                  child: Image.asset("assets/Other/Screen2.gif"),
            ),
          ],
        ),
      ),
    ));
  }
}
