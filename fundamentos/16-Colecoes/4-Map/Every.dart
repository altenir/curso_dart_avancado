///
///  * Conceito
/// - Every faz o teste em todos os elementos com o operador logico && retornando true ou false
///

everyMap() {
  print('\n16.4.2) Map Every');

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Lucio', 'idade': 60},
    {'nome': 'Leila', 'idade': 31},
    {'nome': 'Leandro', 'idade': 17},
  ];
  print(pessoas.every((e) => e.containsKey('nome')));
  print(pessoas.every((e) => e['idade'] > 17));
  print(pessoas.every((e) => e['nome'].toString().startsWith('L')));
}

main() {
  everyMap();
}
