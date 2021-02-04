import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      //color: Colors.black,
      //height: 300.0,
      width: double.maxFinite,
      child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Image.asset(
            'assets/images/github.png',
            height: 120.0,
          )),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(120.0))),
    ));
  }
}
