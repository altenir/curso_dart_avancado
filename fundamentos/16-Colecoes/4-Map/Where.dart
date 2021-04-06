///
/// * Conceitos
/// - where filtra os elementos da coleção criando uma nova do mesmo tamanho ou menor
///
whereMap() {
  List<Map<dynamic, dynamic>> produtos = [
    {'nome': 'Notebook', 'preco': 2499, 'fragil': true},
    {'nome': 'iPad', 'preco': 4199, 'fragil': true},
    {'nome': 'iPhone', 'preco': 2299, 'fragil': true},
    {'nome': 'Magic Mouse', 'preco': 299, 'fragil': false},
  ];

  final fragil = (e) => e['fragil'] == true;
  final nome = (e) => e['nome'];

  List<dynamic> resultado = produtos.where(fragil).map(nome).toList();
  print('Produtos Frageis: $resultado\n');

// ------

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Lucio', 'idade': 60},
    {'nome': 'Leila', 'idade': 31},
    {'nome': 'Leandro', 'idade': 17},
  ];
  List<Map<String, dynamic>> maiores =
      pessoas.where((e) => e['idade'] >= 21).toList();
  print('Maiores: $maiores');

  Map<String?, dynamic?> comecaComL =
      pessoas.firstWhere((e) => e['nome'].toString().startsWith('L'));
  print('Começa com : $comecaComL');

  Map<String, dynamic> menores = pessoas.singleWhere((e) => e['idade'] < 18);
  print('menores: $menores');

  var idades = (e) => e['idade'];
  var soma = (p, c) => p + c;
  var media = (pessoas.map(idades).reduce(soma)) / pessoas.length;
  print('media: $media');
}

main() {
  whereMap();
}
