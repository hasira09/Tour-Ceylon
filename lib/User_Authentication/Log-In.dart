import 'package:flutter/material.dart';

import '../Components/black_button.dart';
import '../Components/my_textfield.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Container(
                height: 165,
                width: 205,
                child: Image.asset('assets/Logos/TCLogo.png')),

            SizedBox(height: 60,),
            

            BlackButton(
              onTap: () {},
              childText: 'Login',
            ),

          ],
        ),
      ),
    );
  }
}
