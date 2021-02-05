import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:http_app/Models/User.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultados'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('Olá'),
      ),
    );
  }

  Future<User> fetchUser() async {
    final response = await http.get('https://api.github.com/users/diegocar448');
    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw new Exception('Algo deu errado');
    }
  }
}
