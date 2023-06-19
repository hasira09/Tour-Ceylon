import 'package:flutter/material.dart';
import 'Main_Screens/3HomePage.dart';
import 'Splash_Screen/Screen1.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SScreen1(),
      // home: HomePage(),

    );
  }
}