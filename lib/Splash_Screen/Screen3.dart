import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tour_ceylon/Splash_Screen/Screen4.dart';

class SScreen3 extends StatefulWidget {
  @override
  State<SScreen3> createState() => _SScreen3State();
}

class _SScreen3State extends State<SScreen3> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SScreen4()),
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
                child: Image.asset("assets/Other/Intro2.png"),
              ),
              Expanded(
                child: Image.asset("assets/Other/Screen3.gif"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
