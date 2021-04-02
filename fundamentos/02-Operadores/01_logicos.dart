main() {
  print('02.0) Operadores Lógicos (&& || !)');

  /// operador && o retorno será true somente se ambas as afirmações forem TRUE
  /// operador || precisa de apenas uma afirmação verdadeira para retornar true
  /// operador ! inverte o valor boleano

  var verdadeiro = !false;
  bool falso = !true;
  print('Verdadeiro = $verdadeiro Falso = $falso');
  print('Operador (!) !true = ${!true} !false ${!false}');

  bool teste1 = verdadeiro || verdadeiro;
  bool teste2 = verdadeiro || falso;
  bool teste3 = falso || falso;
  print(teste1);
  print(teste2);
  print(teste3);
  print('Operador (||) ${teste1} - ${teste2} - ${teste3}');

  bool teste4 = verdadeiro && verdadeiro;
  bool teste5 = verdadeiro && falso;
  // ignore: dead_code
  bool teste6 = falso && falso;
  print(teste4);
  print(teste5);
  print(teste6);
  // ignore: dead_code
  print('Operador (&&) ${true && true} - ${true && false} - ${falso && falso}');

  bool operacao = (1 <= 2) && (3 > 2);
  print(operacao);
  operacao = !(1 > 2) && (3 < 2) || falso;
  print(operacao);
}
