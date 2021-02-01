import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:list_c/models/item.dart';
import 'package:list_c/ui/add_item.dart';

class ListScreen extends StatefulWidget {
  ListScreen({Key key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<Item> items = [
    /* new Item(title: 'Teste 01'),
    new Item(title: 'Teste 02'),
    new Item(title: 'Teste 03'),
    new Item(title: 'Teste 04'),
    new Item(title: 'Teste 05'), */
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Compras'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(color: Colors.blueGrey),
          itemCount: items.length,
          itemBuilder: (context, index) {
            /* Variavel do tipo final pq ele será usada apenas aqui */
            final item = items[index];

            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: IconTheme(
                  child: Icon(item.isDone ? Icons.done_all : Icons.done),
                  data: IconThemeData(color: Colors.white),
                ),
              ),
              title: Text(item.title, style: TextStyle(color: Colors.blueGrey)),
              /* onTap é quando clicar */
              onTap: () {
                setState(() {
                  items[index].isDone = !items[index].isDone;
                });
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.add),
        onPressed: _addItem,
      ),
    );
  }

  /* Aqui daremos inicio a abertura do modal */
  /* Usamos o async e await para rodar de modo assincrono para que não se quebre o processo */
  void _addItem() async {
    final item = await showDialog<Item>(
        context: context,
        builder: (BuildContext context) {
          return new AddItem();
        });

    if (item != null) {
      setState(() {
        items.add(item);
      });
    }
  }

  /* Aqui iremos atualizar a nossa lista */
  Future<void> _refresh() async {
    /* adicionará um delay de 2 segundos */
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      /* Aqui faz a comparação dos itens antes e depois */
      items.sort((a, b) {
        if (a.isDone && !b.isDone)
          return 1;
        else if (!a.isDone && !b.isDone) return -1;
        return 0;
      });
    });

    return Future.value();
  }
}
