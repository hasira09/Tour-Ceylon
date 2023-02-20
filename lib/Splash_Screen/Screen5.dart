import 'dart:async';
import 'package:flutter/material.dart';

class SScreen5 extends StatefulWidget {
  @override
  State<SScreen5> createState() => _SScreen5State();
}

class _SScreen5State extends State<SScreen5> with TickerProviderStateMixin {

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
                child: Image.asset("assets/Other/Intro4.png"),
              ),
              Expanded(
                child: Image.asset("assets/Other/Screen5.gif"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
