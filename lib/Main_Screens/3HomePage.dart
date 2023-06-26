import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_ceylon/Main_Screens/1RidePage.dart';
import 'package:tour_ceylon/Main_Screens/4HotelPage.dart';
import 'package:tour_ceylon/Main_Screens/5ProtectPage.dart';

import '2LocationPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //total height and width of device
    return Scaffold(
      appBar: AppBar(
        title: Text("Email: " + user.email!,
          style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: Icon(Icons.logout,color: Colors.black,),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning \nLaura",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.w800),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        height: size.height * 0.10,
                        width: size.width * 0.30,
                        child: Image.asset("assets/Other/Laura.png"),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.08),
                  Expanded(
                    child: GridView(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10),
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LocationPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width * 0.05,
                              ),
                              color: const Color.fromRGBO(255, 57, 29, 0.25),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/Icons/Button1.svg",
                                  height: size.height * 0.14,
                                ),
                                SizedBox(height: size.height * 0.01),
                                Text(
                                  "Discover a Place",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        fontSize: size.width * 0.05,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RidePage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width * 0.05,
                              ),
                              color: const Color.fromRGBO(0, 0, 128, 0.1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/Icons/Button2.svg",
                                  height: size.height * 0.14,
                                ),
                                SizedBox(height: size.height * 0.01),
                                Text(
                                  "Take a Ride",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        fontSize: size.width * 0.05,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HotelPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width * 0.05,
                              ),
                              color: const Color.fromRGBO(0, 0, 128, 0.1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/Icons/Button3.svg",
                                  height: size.height * 0.14,
                                ),
                                SizedBox(height: size.height * 0.01),
                                Text(
                                  "Book a Hotel",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        fontSize: size.width * 0.05,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProtectPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width * 0.05,
                              ),
                              color: const Color.fromRGBO(255, 57, 29, 0.25),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/Icons/Button4.svg",
                                  height: size.height * 0.14,
                                ),
                                SizedBox(height: size.height * 0.01),
                                Text(
                                  "Help to Protect",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        fontSize: size.width * 0.05,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
