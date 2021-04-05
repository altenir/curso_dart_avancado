/*
  * Conceito:
  - List é uma coleção dinamica e ordenada de elementos entre colchetes []
  - forEach: Aplica a função anonima a cada elemento da nossa coleção
  - Todo array é um List<?>
*/

///
/// * Reduce
/// - Ao interagir com os elementos o indice 0 se torna o anterior, indice 1 se torna o atual
///

listReduce() {
  print('\n16.1.5) List Reduce\n');

  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);
  int resultado = numerosPares.reduce((anterior, atual) {
    print('$anterior + $atual');
    return anterior + atual; // o retorno sera o proximo anterior
  });
  print(resultado);

  List<bool> boleanas = [true, false, !true, !false];
  bool and = boleanas.reduce((anterior, atual) => anterior && atual);
  bool or = boleanas.reduce((atual, anterior) => anterior || atual);
  print('and: $and or: $or');

  List<int> idades [36,12,18,31,17,23];
  int maisNovo = idades.remove((anterior, atual) =>(anterior > atual) ? atual : anterior);
}

void main() {
  listReduce();
}
