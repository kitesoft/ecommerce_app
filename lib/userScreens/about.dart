import 'package:flutter/material.dart';

class GirliesAbout extends StatefulWidget {
  @override
  _GirliesAboutState createState() => _GirliesAboutState();
}

class _GirliesAboutState extends State<GirliesAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        centerTitle: false,
      ),

      body: Center(
        child: Text("About Us",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
