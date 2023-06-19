import 'package:flutter/material.dart';

import '../Components/black_button.dart';
import '../Components/my_textfield.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Container(
                height: 165,
                width: 205,
                child: Image.asset('assets/Logos/TCLogo.png')),

            SizedBox(height: 60,),

            MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
              suffixIcon: Icon(Icons.person_3_outlined,color: Color.fromRGBO(255, 57, 29, 1)),
            ),

            SizedBox(height: 20,),

            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: false,
              suffixIcon: Icon(Icons.password_outlined,color: Color.fromRGBO(255, 57, 29, 1)),
            ),

            SizedBox(height: 20,),

            BlackButton(
              onTap: () {},
              childText: 'Login',
            ),

            Row(
                children: <Widget>[
                  Expanded(
                      child: Divider(
                        height: 65,
                        thickness: 2,
                        endIndent: 10,
                        indent: 30,
                        color: Colors.grey.shade500,
                      )
                  ),

                  Text("Or"),

                  Expanded(
                      child: Divider(
                        height: 65,
                        thickness: 2,
                        indent: 10,
                        endIndent: 30,
                        color: Colors.grey.shade500,
                      )
                  ),
                ]
            ),

          ],
        ),
      ),
    );
  }
}
