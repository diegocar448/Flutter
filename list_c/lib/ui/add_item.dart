import 'package:flutter/material.dart';
import 'package:list_c/models/item.dart';

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
            final item = new Item(title: itemC.value.text);
            /* Antes de fechar o modal limpar o valor do modal */
            itemC.clear();

            /* fechando o modal passando o valor */
            Navigator.of(context).pop(item);
          },
        ),
      ],
    );
  }
}
