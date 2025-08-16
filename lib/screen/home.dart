import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // return Row(
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.end,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.redAccent,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            ),
          ),
        ),
        Container(
          color: Colors.redAccent,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            ),
          ),
        ),
        Container(
          color: Colors.redAccent,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            ),
          ),
        ),
      ],
    );
  }
}
