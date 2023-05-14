import 'package:flutter/material.dart';
import '../PaymentPages/Payment.dart';

class RidePage extends StatefulWidget {
  const RidePage({Key? key}) : super(key: key);

  @override
  State<RidePage> createState() => _RidePageState();
}

class _RidePageState extends State<RidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Ride Page"),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Center(
              child: MaterialButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Payment()));
            },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      "Payment",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
