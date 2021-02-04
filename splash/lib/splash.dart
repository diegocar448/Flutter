import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:splash/home.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    /* Deixando a tela como fullScreen */
    SystemChrome.setEnabledSystemUIOverlays([]);

    /* Após 3 segundos redirecionar para a tela Home ((qual context, newRoute(qual tela vai redirecionar))) */
    Future.delayed(Duration(seconds: 3)).then((_) => {
          /* com a função pushReplacacement não teremos função para voltar */
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Home()))
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250,
              child: Image.asset('assets/images/logo-especializati.png'),
            ),
            Container(
              height: 40,
            ),
            CircularProgressIndicator(
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.orange)),
            Container(
              height: 10,
            ),
            Text(
              'Carregando... ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
