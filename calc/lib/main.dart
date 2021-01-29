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
      style: TextStyle(color: Colors.deepOrange),
      decoration: InputDecoration(
        labelText: 'Numero 01',
        labelStyle: TextStyle(color: Colors.deepOrange),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange, width: 1.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange, width: 1.0)),
      ),
    );
    /* Campo tipo number 2*/
    TextField num2 = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.deepOrange),
      decoration: InputDecoration(
        labelText: 'Numero 02',
        labelStyle: TextStyle(color: Colors.deepOrange),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange, width: 1.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange, width: 1.0)),
      ),
    );

    /* Botão */
    RaisedButton button = RaisedButton(
        onPressed: () {},
        child: Text('Calcular'),
        color: Colors.deepOrange,
        textColor: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)));

    /* Separador */
    Padding separator = Padding(
      padding: EdgeInsets.all(4.0),
    );

    /* Layout do aplicativo como coluna (outra opção seria linha)  */
    Column columns = Column(
      children: <Widget>[
        num1,
        separator,
        num2,
        separator,
        SizedBox(
          child: button,
          width: double.infinity,
        ),
      ],
    );

    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: Padding(
          padding: EdgeInsets.all(14.0),
          child: columns,
        ),
      ),
    );
  }
}
