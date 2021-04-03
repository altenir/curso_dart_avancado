/*
  * Const
  - Inicializada em tempo de compilação, deve ser declarada com valor constante
  - Ao nível de classes deve ser statica para ficar disponivel na classe
  - Em coleções do tipo const, o conteúdo dever ser constante
  * Objeto imutavel
  - O construtor deve ser constante
  - As variaveis devem ser final ou static const
 */

import 'Brasil.dart';

void main() {
  print('10.2) Modificadore Const\n');

  const pi = 3.14;
  double raio = 2;
  var resultado = pi * (raio * raio);
  print('${resultado}\n');

  final numeros = [raio, 2.5];
  numeros.add(resultado);
  print(numeros);

  final dynamic listaFinal = const [0, 1];
  // listaFinal.add(2);
  print(listaFinal);

  // const listaConst = [1, 2, raio]; // a lista/colecao só aceita valor do tipo const

  const listaConst = [1, 2, pi];
  // listaConst.add(pi);
  print('${listaConst}\n');

  for (var i = 0; i < 3; i++) {
    final indiceFinal = i;
    const constante = 1;
    print('constante: ${constante + indiceFinal}');
  }

// Objeto imutavel
  var pais = new Brasil(-15.79231, -47.882326);
  // pais.latitude = 0;
  // Brasil.capital = '';
  print(
      '\nobjeto $pais capital: ${Brasil.capital} latitude: ${pais.latitude} longitude: ${pais.longitude}');
  print('Estados: ${Brasil.estados}');
}
