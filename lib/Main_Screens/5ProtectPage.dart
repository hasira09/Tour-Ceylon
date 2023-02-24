import 'package:flutter/material.dart';

class ProtectPage extends StatefulWidget {
  const ProtectPage({Key? key}) : super(key: key);

  @override
  State<ProtectPage> createState() => _ProtectPageState();
}

class _ProtectPageState extends State<ProtectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Protect Page"),
        elevation: 0,
      ),
    );
  }
}
