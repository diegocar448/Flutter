import 'package:flutter/material.dart';

class AppMenuDrawer extends StatelessWidget {
  const AppMenuDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 120.0,
          child: DrawerHeader(
            decoration: BoxDecoration(color: Color.fromRGBO(255, 241, 89, 1)),
            child: Row(
              children: <Widget>[
                Container(
                    width: 60.0,
                    height: 60.0,
                    child: CircleAvatar(
                      child: Icon(Icons.people),
                      backgroundColor: Color.fromRGBO(255, 241, 89, 1),
                      foregroundColor: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(color: Colors.grey, width: 4.0))),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Olá Diego!",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Text("Nível Avançado"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        /* Automatizando criação de menus */
        _itemDrawer(Icon(Icons.home), "Home"),
        _itemDrawer(Icon(Icons.hotel), "Página 02"),
        Divider(color: Colors.grey),
        _itemDrawer(Icon(Icons.label_important), "Página 03"),
        _itemDrawer(Icon(Icons.location_searching), "Página 04"),
        _itemDrawer(Icon(Icons.filter_8), "Página 05"),
        _itemDrawer(Icon(Icons.face), "Página 06"),
        Divider(color: Colors.grey),
        _itemDrawer(Icon(Icons.exit_to_app), "Sair"),
      ],
    );
  }

  Widget _itemDrawer(Icon icon, String text) {
    /* Home */
    return ListTile(
      leading: IconTheme(
        child: icon,
        data: IconThemeData(color: Colors.black),
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      onTap: () {},
    );
    /* # Home */
  }
}
