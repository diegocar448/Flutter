import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    /* Campo tipo number 1*/
    TextField num1 = TextField(
      keyboardType: TextInputType.number,
    );
    /* Campo tipo number 2*/
    TextField num2 = TextField(
      keyboardType: TextInputType.number,
    );

    /* Botão */
    RaisedButton button = RaisedButton(
      onPressed: null,
      child: Text('Calcular'),
    );

    Column columns = Column(
      children: <Widget>[num1, num2, button],
    );

    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(14.0),
          child: columns,
        ),
      ),
    );
  }
}
