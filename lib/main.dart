import 'package:flutter/material.dart';
import 'package:tour_ceylon/User_Authentication/auth_page.dart';
import 'Main_Screens/3HomePage.dart';
import 'Splash_Screen/Screen1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
      //home: HomePage(),
    );
  }
}
