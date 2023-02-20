import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tour_ceylon/Splash_Screen/Screen3.dart';

class SScreen2 extends StatefulWidget {
  @override
  State<SScreen2> createState() => _SScreen2State();
}

class _SScreen2State extends State<SScreen2> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SScreen3()),
      ),
    );
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 30),
              Image.asset("assets/Logos/TC_Logo2.png"),
              const SizedBox(height: 5),
              Expanded(
                child: Image.asset("assets/Other/Intro1.png"),
              ),
              Expanded(
                child: Image.asset("assets/Other/Screen2.gif"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
