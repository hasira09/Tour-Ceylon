import 'package:flutter/material.dart';
import 'Main_Screens/BottomNavBar.dart';
import 'Splash_Screen/Screen1.dart';
import 'User_Authentication/FingerPrintAuth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // Change this according to the requirement
      
      home: FingerPrint(),
      //home: SScreen1(),
    );
  }
}