import 'package:flutter/material.dart';

class GirliesFavorities extends StatefulWidget {
  @override
  _GirliesFavoritiesState createState() => _GirliesFavoritiesState();
}

class _GirliesFavoritiesState extends State<GirliesFavorities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourites"),
        centerTitle: false,
      ),

      body: Center(
        child: Text("My Favorites",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),

    );
  }
}
