/*
  * Conceito:
  - List é uma coleção dinamica e ordenada de elementos entre colchetes []
  - forEach: Aplica a função anonima a cada elemento da nossa coleção
  - Todo array é um List<?>
*/

///
/// * Expand
/// - Cria uma lista expandindo ou concatenando os elementos
///
listExpand() {
  print('\n16.1.1) List Expand\n');

  var lista = [
    [1, 2],
    [3, 4]
  ];

  List<dynamic> listaFlat =
      lista.expand((element) => element).toList(); // concatenar elementos
  List<dynamic> listaDuplicada =
      listaFlat.expand((e) => [e, e]).toList(); // duplicar elementos
  print('listaFlat: $listaFlat \nlistaDuplicada: $listaDuplicada');

  List<num> numeros = [1, 2.5, 5, 7.25, 10];
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  List<dynamic> listaDinamica = List.filled(1, null, growable: true);
  print('listaDinamica: $listaDinamica');
  print('listaDinamica: ${listaDinamica = [1, 5, 10] + [
        12,
        7
      ]}'); // concatenando de array
  print(listaDinamica = []..addAll(inteiros)..addAll(doubles)); //concatenando
  print(listaDinamica = [0, ...inteiros, 15]); // operador ... spread (espalhar)
  print(listaDinamica = [
    ...[],
    ...inteiros,
    if (doubles is List<double>) ...doubles
  ]);
  print('listaDinamica in: ${listaDinamica = [
    ...[],
    for (var numero in numeros) numero
  ]}');
}

main() {
  listExpand();
}
