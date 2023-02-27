import 'package:flutter/material.dart';

class FingerPrint extends StatefulWidget {
  const FingerPrint({Key? key}) : super(key: key);

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.indigo,
          body: Column(
            children: <Widget>[
              Center(
                child: Text("Login", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    ));
  }
}
