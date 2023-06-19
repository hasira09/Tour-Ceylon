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
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //total height and width of device
    return Scaffold(
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
                      Container(
                        child: Text(
                          "Good Morning \nLaura",
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(fontWeight: FontWeight.w800),
                        ),
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
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LocationPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width * 0.05,
                              ),
                              color: Color.fromRGBO(255, 57, 29, 0.25),
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
                                      .headline6
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
                                builder: (context) => RidePage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width * 0.05,
                              ),
                              color: Color.fromRGBO(0, 0, 128, 0.1),
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
                                      .headline6
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
                                builder: (context) => HotelPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width * 0.05,
                              ),
                              color: Color.fromRGBO(0, 0, 128, 0.1),
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
                                      .headline6
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
                                builder: (context) => ProtectPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width * 0.05,
                              ),
                              color: Color.fromRGBO(255, 57, 29, 0.25),
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
                                      .headline6
                                      ?.copyWith(
                                        fontSize: size.width * 0.05,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10),
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
