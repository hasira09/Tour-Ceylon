import 'package:flutter/material.dart';
import 'package:tour_ceylon/User_Authentication/Log-In.dart';
import '../User_Authentication/Sign-Up.dart';

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
              Container(
                height: 5,
              ),
              SizedBox(
                  height: 55,
                  width: 290,
                  child: Expanded(
                      child: MaterialButton(
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SignUp()));
                          },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Create an Account",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        ),
                      ))),
              Container(
                height: 5,
              ),
              SizedBox(
                height: 35,
                width: 280,
                child: Expanded(
                  child: Row(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
