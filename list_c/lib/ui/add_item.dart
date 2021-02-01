import 'package:flutter/material.dart';

class AddItem extends StatelessWidget {
  final itemC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Item'),
      content: TextField(
        autofocus: true,
        controller: itemC,
      ),
      actions: <Widget>[
        FlatButton(
            child: Text('Cancelar'),
            onPressed: () => Navigator.of(context).pop()),
        FlatButton(
          child: Text('Add'),
          onPressed: () {
            /* .value.text assim conseguimos pegar o texto da propriedade value */
            print(itemC.value.text);
          },
        ),
      ],
    );
  }
}
