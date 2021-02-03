import 'package:flutter/material.dart';

import 'package:splash/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* remove o desenho de debug */
      debugShowCheckedModeBanner: false,
      title: "Splash Screen",
      home: Splash(),
    );
  }
}
