import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tour_ceylon/User_Authentication/Sign-Up.dart';

import '../Components/black_button.dart';
import '../Components/my_textfield.dart';
import '../Components/square_tile.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
// sign user in method
  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      // WRONG EMAIL
      if (e.code == 'user-not-found') {
        // show error to user
        wrongEmailMessage();
      }

      // WRONG PASSWORD
      else if (e.code == 'wrong-password') {
        // show error to user
        wrongPasswordMessage();
      }
    }
  }

  // wrong email message popup
  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              'Incorrect Email',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  // wrong password message popup
  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              'Incorrect Password',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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

            BlackButton(
              onTap: signUserIn,
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

            const SizedBox(height: 30),

            Container(
                height: 90,
                width: 265,
                child: Image.asset('assets/Other/fingerprintL.png')),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Don't have an Account?",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    "Sign In",
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
