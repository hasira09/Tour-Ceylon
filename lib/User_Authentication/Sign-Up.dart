import 'package:flutter/material.dart';

import '../Components/black_button.dart';
import '../Components/my_textfield.dart';
import '../Components/square_tile.dart';
import 'Log-In.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
                height: 165,
                width: 205,
                child: Image.asset('assets/Logos/TCLogo.png')),

            SizedBox(height: 25,),

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

            MyTextField(
              controller: passwordConfirmController,
              hintText: 'Confirm Password',
              obscureText: false,
              suffixIcon: Icon(Icons.password_outlined,color: Color.fromRGBO(255, 57, 29, 1)),
            ),

            SizedBox(height: 15,),

            BlackButton(
              onTap: () {},
              childText: 'Sign Up',
            ),

            Row(
                children: <Widget>[
                  Expanded(
                      child: Divider(
                        height: 65,
                        thickness: 2,
                        endIndent: 10,
                        indent: 30,
                        color: Colors.grey.shade400,
                      )
                  ),

                  Text("Or"),

                  Expanded(
                      child: Divider(
                        height: 65,
                        thickness: 2,
                        indent: 10,
                        endIndent: 30,
                        color: Colors.grey.shade400,
                      )
                  ),
                ]
            ),



            // google + apple sign in buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // google button
                SquareTile(imagePath: 'assets/images/Google.png'),

                SizedBox(width: 15),

                // apple button
                SquareTile(imagePath: 'assets/images/Facebook.png'),

                SizedBox(width: 15),

                // IG button
                SquareTile(imagePath: 'assets/images/Instagram.png')
              ],
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Already Have an Account?",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogIn()));
                  },
                  child: Text(
                    " Login",
                    style: TextStyle(
                        fontSize: 17,
                        color: Color.fromRGBO(255, 57, 29, 1)),
                  ),
                ),
              ],
            ),





          ],
        ),
      ),
    );
  }
}
