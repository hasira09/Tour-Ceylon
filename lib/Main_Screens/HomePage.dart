import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home_rounded, size: 30),
      Icon(Icons.location_on_rounded, size: 30),
      Icon(Icons.car_rental_rounded, size: 30),
      Icon(Icons.hotel_rounded, size: 30),
      Icon(Icons.energy_savings_leaf_rounded, size: 30),
    ];

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Home Page"),
        elevation: 0,
      ),
      bottomNavigationBar: CurvedNavigationBar(height: 60, items: items),
    );
  }
}
