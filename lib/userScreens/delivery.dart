import 'package:flutter/material.dart';

class GirliesDelivery extends StatefulWidget {
  @override
  _GirliesDeliveryState createState() => _GirliesDeliveryState();
}

class _GirliesDeliveryState extends State<GirliesDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery Address"),
        centerTitle: false,
      ),

      body: Center(
        child: Text("Delivery Address",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
