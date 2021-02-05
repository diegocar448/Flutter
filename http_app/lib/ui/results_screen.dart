import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:http_app/Models/User.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Resultados'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: FutureBuilder(
          future: _fetchUser(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final user = snapshot.data;
              return Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            user.avatarUrl,
                            height: 100.0,
                          )),
                      /* Espaçamento */
                      Container(height: 10.0),
                      Text(user.name,
                          style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      /* Espaçamento */
                      Container(height: 10.0),
                      Text("( ${user.blog} )",
                          style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ));
            } else if (snapshot.hasError) {
              return Text('Erro: ${snapshot.error}');
            }

            return CircularProgressIndicator(
              backgroundColor: Colors.black,
            );
          },
        ),
      ),
    );
  }

  Future<User> _fetchUser() async {
    final response = await http.get('https://api.github.com/users/diegocar448');
    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw new Exception('Algo deu errado');
    }
  }
}
