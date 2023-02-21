import 'dart:async';
import 'package:flutter/material.dart';
import 'Screen4.dart';

class SScreen3 extends StatefulWidget {
  @override
  State<SScreen3> createState() => _SScreen3State();
}

class _SScreen3State extends State<SScreen3> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Other/Background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
            Padding(
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/Other/Screen3.gif"),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 5,
              right: -15,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SScreen4()));
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 18.0, color: Color.fromRGBO(128, 128, 128, 9.0)),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
