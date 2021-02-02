import 'package:flutter/material.dart';

/* a class usada para pesquisar precisar sempre extend de SeachDelegate */
class AppSearchBar extends SearchDelegate<String> {
  /* Produtos disponíveis */
  final products = [
    'TV',
    'Macbook',
    'Geladeira',
    'Iphone',
    'Teclado',
    'Ipad',
    'Mouse',
    'Copo',
  ];

  /* Pesquisas recentes feitas pelo usuario*/
  final recentSearchs = ['Macbook', 'Iphone', 'Ipad'];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.cancel),
          onPressed: () {
            /* quando voltar retorna null [] resultado de pesquisa */
            query = "";
            close(context, null);
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    /* action de (opção volta) após no icon search */
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        query = "";
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    /* Aqui construimos todo resultado final da pesquisa */
    return Text("Resultado para pesquisa: $query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final results = query.isEmpty ? recentSearchs : products;

    /* Aqui definimos histórico */
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
            leading: Icon(Icons.youtube_searched_for),
            title: Text(results[index]),
            onTap: () {
              print(results[index]);
            });
      },
    );
  }
}
