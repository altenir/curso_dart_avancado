import 'dart:math';

///
/// * Conceito
///  - Reduce compara os elementos da colecao retornando 1 unico elemento resultante
///  - Ao interagir com os elementos o indice 0 se torna o anterior e o indice 1 se torna o atual
///

reduceMap() {
  print('\16.4.4) Map Reduce\n');

  List<Map<String, dynamic>> alunos = [
    {'nome': 'Fernando', 'nota': 7.3, 'bolsista': false},
    {'nome': 'Leila', 'nota': 9.2, 'bolsista': true},
    {'nome': 'Chloe', 'nota': 9.8, 'bolsista': true},
    {'nome': 'Bartolomeu', 'nota': 8.7, 'bolsista': false},
  ];
  final bolsistas = (e) => e['bolsista'] as bool;
  final nomes = (e) => e['nome'];
  final notas = (e) => e['nota'];
  final soma = (p, c) => p + c;
  List<dynamic> bolsitasNomes = alunos.where(bolsistas).map(nomes).toList();
  print('Alunos Bolsistas: $bolsitasNomes');

  List<Map<String, dynamic>> medias = alunos.where(bolsistas).toList();
  var bolsistasMedias = medias.map(notas).reduce(soma) / medias.length;
  print('bolsistasMedias: $bolsistasMedias');
  bool todosBolsistas = alunos.map(bolsistas).reduce((p, c) => p && c);
  print('todosBolsistas: ${todosBolsistas ? 'Sim' : 'Não'}');
  bool algumBolsista = alunos.map(bolsistas).reduce((p, c) => p || c);
  print('algumBolsista: ${algumBolsista ? 'Sim' : 'Não'}');

  List<dynamic> funcionarios = [
    {'nome': 'Leila', 'genero': 'M', 'pais': 'Brasil', 'salario': 1599.70},
    {
      'nome': 'Fernando',
      'genero': 'H',
      'pais': 'Argentina',
      'salario': 1234.36,
    },
    {'nome': 'Chloe', 'genero': 'M', 'pais': 'Brasil', 'salario': 1730.30},
  ];
  var brasileiros = (e) => e['pais'] == 'Brasil';
  var mulheres = (e) => e['genero'] == 'M';
  var menorSalario = (p, c) => p['salario'] < c['salario']
      ? p['salario']
      : c['salario']; // filtro para salarios
  var funcMenorSalario =
      (p, c) => p['salario'] < c['salario'] ? p : c; // filtro para funcionarios
  List<dynamic> selecionados =
      funcionarios.where(brasileiros).where(mulheres).toList();
  print('selecionados: ${selecionados}');
  print('menorSalario mulheres: ${selecionados.reduce(menorSalario)}');
  Map<String, dynamic> funcionario = selecionados.reduce(funcMenorSalario);
  print(
      'funcioanrio: ${funcionario['nome']} Salário: ${funcionario['salario']}');
}

main() {
  reduceMap();
}
