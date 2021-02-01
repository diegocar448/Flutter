import 'package:flutter/material.dart';

/* imports internos sempre separados dos imports do Flutter */
import 'package:list_c/ui/list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Compras',
      home: new ListScreen(),
    );
  }
}
