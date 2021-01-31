import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<String> todos = ['Default'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Dynamic'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(color: Colors.deepPurple),
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
                backgroundColor: Colors.deepPurple,
                child: IconTheme(
                    child: Icon(Icons.ac_unit),
                    data: IconThemeData(color: Colors.white))),
            title:
                Text(todos[index], style: TextStyle(color: Colors.deepPurple)),
          );
        },
      ),
    );
  }
}
