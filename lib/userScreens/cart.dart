import 'package:flutter/material.dart';

class GirliesCart extends StatefulWidget {
  @override
  _GirliesCartState createState() => _GirliesCartState();
}

class _GirliesCartState extends State<GirliesCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      
      body: Center(
        child: Text("Cart",
          style: TextStyle(
            fontSize: 25.0
          ),
        ),
      ),
      
    );
  }
}
