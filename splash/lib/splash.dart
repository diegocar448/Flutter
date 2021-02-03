import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/especializati.png'),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
