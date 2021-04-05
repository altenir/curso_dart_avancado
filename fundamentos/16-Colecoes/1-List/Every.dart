/*
  * Conceito:
  - List é uma coleção dinamica e ordenada de elementos entre colchetes []
  - forEach: Aplica a função anonima a cada elemento da nossa coleção
  - Todo array é um List<?>
*/

///
/// * Where
/// - Filtra os elementos da coleção criando uma nova do emsmo tamanho ou menor
///
listWhere() {
  print('\n16.1.4) List Where\n');

  List<int> idades = [36, 12, 18, 31, 17, 23];
  print(idades
      .where((element) => element is int)
      .toList()); // retorno em Iterable
  print(idades.whereType<int>());

  List<int> adultos = idades.where((int e) => e > 17).toList();
  var criancas = idades.singleWhere((int e) => e < 12,
      orElse: () =>
          0); // orElse usado para quando não satisfazer o filtro, ele evita um erro
  int menor = idades.lastWhere((e) => e.toString().startsWith('0'),
      orElse: () => 0); // pega o ultimo elemento que satisfaça a condicao
  print('adulto: $adultos menor: $menor crianças: $criancas');
}

main() {
  listWhere();
}
