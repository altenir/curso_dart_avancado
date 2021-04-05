/*
  * Conceito:
  - List é uma coleção dinamica e ordenada de elementos entre colchetes []
  - forEach: Aplica a função anonima a cada elemento da nossa coleção
  - Todo array é um List<?>
*/

import 'dart:math';

listForEach() {
  print('16.1.0) List ForEach\n');

  var array = [0, 2.5, 5, 7.25, 10];
  array.forEach((elemento) {
    print('foreach: $elemento');
  });

  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  List<bool> boleanos = [true, false, !true, !false];
  List<String> frutas = ['Morango', 'Banana', 'Tomate'];

  print('\nimplementação: ${frutas.runtimeType}');
  print(
      '\nboleanos[3]: ${(boleanos[inteiros.length]) ? 'verdadeiro' : 'falso'}');

  frutas.insert(0, 'Abacaxi'); // insere um elemento o indice determinado
  frutas.add('Laranja');
  frutas.forEach((e) => print('foreach: $e'));
  print(frutas);
  frutas.removeLast();
  frutas.removeWhere((element) => element == 'Banana');
  print(frutas);
  print(frutas.elementAt(2));
  print(frutas.contains('abacaxi')); // camelCase
  List<num> numeros = List.from(inteiros)
    ..addAll(doubles)
    ..shuffle()
    ..sort();
  print('\n$numeros');

  // List<dynamic> lista = List(2); // deprecated -fixa o numero de elementos
  // lista = numeros.take(3).skip(1).take(2).toList();
  // print('lista: $lista');

  // geradores de lista
  List<String> listaPreenchida = List.filled(2, 'elemento');
  List<String> listaGerada = List.generate(2, (i) => 'Nome ${i}');
  List<double> listaPrecos = List.generate(
      5,
      (index) =>
          (index + 1) * double.parse(Random().nextDouble().toStringAsFixed(2)));
  print(
      'listaPreenchida: $listaPreenchida \nlistaGerada: $listaGerada \nlistaPrecos: $listaPrecos');

  listaPrecos.forEach((element) => print('foreach: $element'));
}

main() {
  listForEach();
}
