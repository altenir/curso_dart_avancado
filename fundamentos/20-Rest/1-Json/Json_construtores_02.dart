/*
  * Conceito
  - Representacional state Transfer (Transferência Representacional de Estado);
  - É uma arquitetura que define um conjunto de restrições na criação de web services
  - É uma padronização para multipla aplicações poam se comunicar usando protocolo
*/

import 'dart:convert';

///
/// * SEREALIZAÇÃO MANUAL - Biblioteca JSON integrada ao dart 'dart:convert'
///
/// * SEREALIZAÇÃO JSON DIRETA
///   - Perde recursos estatico de linguagens: segurança de tipo, autocompletar e execução de tempo de compilação
///

conversaoDireta() {
  print('2.0.0) JSON Conversão Direta\n');

  String jsonData = '''
  {
    "nome" : "Fernando",
    "idade" : 36,
    "email" : "fm@gmail"
  }
  ''';

  // DECODE
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson: $parsedJson');

  String nome = parsedJson['nome'];
  int idade = parsedJson['idade'];
  String email = parsedJson['email'];
  print(
      'USO SEREALIZAÇÃO JSON DIRETA - nome: $nome idade:$idade e-mail: $email');

  // ENCODE
  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};
  String toJson = jsonEncode(map);
  print('ToJson: $toJson');
}

///
/// * SEREALIZAÇÃO JSON EM OBJETO
///   - Utiliza recursos estaticos da linguagem:
///     Segirança de tipo, autocomplete e execuções de tempo de compilação
///

conversaoObjeto() {
  print('20.0.1) JSON Conversao Objeto\n');

  String jsonData = '''
  [
    {
      "nome" : "Fernando",
      "idade" : 36,
      "email" : "fm@gmail"
    },
    {
      "nome" : "Fernando",
      "idade" : 36,
      "email" : "fm@gmail"
    }
  ]
  ''';

  // DECODE
  List<dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson: $parsedJson\n');
  ListaUsuarios listaUsuarios = ListaUsuarios.fromJson(parsedJson);
  print(
      'USO OBJETO:idae: ${listaUsuarios.usuarios!.elementAt(0).idade} email: ${listaUsuarios.usuarios![0].email}');

  // Usuario usuario =
  //     listaUsuarios.usuarios!.singleWhere((e) => e.nome == 'Fernando');
  // print('USO OBJETO:idae: ${usuario.idade} email: ${usuario.email}');

  var usuarioNovo =
      Usuario.fromJson({'nome': 'Chloe', 'idade': 1, 'email': 'cm@gmail'});

  listaUsuarios.usuarios!.add(usuarioNovo);

  // ENCODE
  List<dynamic> lista = listaUsuarios.toJson();
  String toJson = json.encode(lista);
  print('toJson: $toJson');
}

main() {
  conversaoDireta();
  conversaoObjeto();
}

class ListaUsuarios {
  List<Usuario>? usuarios;

  // Construtor default da class
  ListaUsuarios({this.usuarios});

//? Construtor com lista de inicialização, usa o this para passar os parametros para o construtor default
  ListaUsuarios.fromJson(List<dynamic> json)
      : this(
          usuarios: json.map((e) => Usuario.fromJson(e)).toList(),
        );

  List<dynamic> toJson() {
    return usuarios!;
  }
}

class Usuario {
  late final String? nome;
  late final int? idade;
  late final String? email;

  //?Construtor default da class
  Usuario({this.nome, this.idade, this.email});

  //? Contrutor nomeado para criar uma nova instancia a partir de um map
  // Usuario.fromJson(Map<String, dynamic> json) {
  //   this.nome = json['nome'];
  //   this.idade = json['idade'];
  //   this.email = json['email'];
  // }

  //? Construtor Factory retorna uma nova instancia do construtor default da classe a partir de um map
  // factory Usuario.fromJson(Map<String, dynamic> json) {
  //   return Usuario(
  //     nome: json['nome'],
  //     idade: json['idade'],
  //     email: json['email'],
  //   );
  // }

  //? Construtor com lista de inicialização, define parametros antes de executar o escopo do construtor
  // Usuario.fromJson(Map<String, dynamic> json)
  //     : nome = json['nome'],
  //       idade = json['idade'],
  //       email = json['email'] {
  //   // configurações iniciais
  // }

//? Construtor com lista de inicialização, usa o this para passar os parametros para o construtor default
  Usuario.fromJson(Map<String, dynamic> json)
      : this(
          nome: json['nome'],
          idade: json['idade'],
          email: json['email'],
        );

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'email': email,
    };
  }
}
