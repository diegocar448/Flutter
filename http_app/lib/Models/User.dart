class User {
  final String name;
  final String avatarUrl;
  final String blog;
  final int followers;
  final int publicRepos;

  User(this.name, this.avatarUrl, this.blog, this.followers, this.publicRepos);

  /* Criar um objeto do JSON com o factory */
  factory User.fromJson(Map<String, dynamic> json) {
    /* Esses parâmetros vão retorna da Api*/
    return User(json['name'], json['avatar_url'], json['blog'],
        json['followers'], json['public_repos']);
  }
}
