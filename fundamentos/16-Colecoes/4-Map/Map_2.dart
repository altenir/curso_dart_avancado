import 'dart:async';

///
///  * Map
///  - Map transforma/seleciona os elementos de uma colecao criando uma nova do mesmo tamanho
///
mapMap() {
  print('\n16.4.1) Map map\n');

  List<Map<String, dynamic>> carrinho = [
    {'nome': 'Borracha', 'preco': 3.45},
    {'nome': 'Caderno', 'preco': 13.90},
    {'nome': 'KitLapis', 'preco': 41.22},
    {'nome': 'Caneta', 'preco': 7.50},
  ];

  // Function porcentagem(desconto) => (valor) => desconto * valor['preco']; // closure
  // List<String> preco1 = carrinho.map(porcentagem(0.9));
  // AULA INCOMPLETA POR ESSE ERRO NA PORCENTAGEM, VOLTAR PARA FAZER NOVAMENTE DEPOIS DE APRENDER MAIS

  final moeda = (e) => 'RS ${e.toString().replaceFirst('.', ',')}';
  List<String> preco2 = carrinho
      .map((e) => e.update('preco', (e) => e * 0.9))
      .map(moeda)
      .toList();
  double precoMedio = (carrinho.map((e) => e['preco']).reduce((p, c) => p + c) /
      carrinho.length);
  print('Lista Preço1: ${preco2} Preço Médio: $precoMedio');

// Array de Objetos
  List<Map<String, Object>> escola = [
    {
      'nome': 'Turma T1',
      'alunos': [
        {'nome': 'Fernando', 'nota': 8.1},
        {'nome': 'Leila', 'nota': 9.3},
      ]
    },
    {
      'nome': 'Turma T2',
      'alunos': [
        {'nome': 'Chloe', 'nota': 8.9},
        {'nome': 'Bartolomeu', 'nota': 7.3},
      ]
    }
  ];
  List<dynamic> alunosEscola = escola.map((e) => e['alunos']).toList();
  print('Lista Ordenada: ${alunosEscola}');
  var novaLista = alunosEscola.expand((a) => a).toList();
  print('Lista Nova: ${novaLista}');
  // novaLista.sort((b, a) => a['nota'].comparaTo(b['nota']));
  print('');
  double mediaNotas = novaLista.map((e) => e['nota']).reduce((p, c) => p + c) /
      novaLista.length;
  print('mediaNotas: ${mediaNotas.toStringAsFixed(2)}');
  novaLista.forEach((e) => print('${e['nome']} ${e['nota']}'));
}

main() {
  mapMap();
}
