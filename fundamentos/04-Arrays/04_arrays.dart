main() {
  print('04.0) Arrays\n');

  var textos = ['Fernando', 'Leila'];
  var numeros = [1, 2.5, 5, 31, 36];
  var condicoes = [!false, true, false, null];
  print('${textos[0]} e ${textos[1]}');
  print('${textos[0]} tem ${numeros[4]}');
  print('${textos[1]} ${numeros[3] > 17 ? 'é maior' : 'não é maior'} de idade');
  print(
      'condicaoes[3] == null: ${condicoes[3] ?? (condicoes[0]! ? condicoes[1] : condicoes[2])}');

  bool verdadeiro = !false;
  var arrayDinamico = ['texto', [], 3, 1.5, verdadeiro];
  print(arrayDinamico);
  arrayDinamico[0] = textos[0];
  arrayDinamico[1] = ['Martins', 'de', 'Andrade'];
  arrayDinamico[2] = numeros[2];
  arrayDinamico[3] = numeros[1];
  arrayDinamico[4] = !verdadeiro;
  print(arrayDinamico);

  print('\n04.1) Arrays Funções\n');
  if (condicoes[3] != null) {
    arrayDinamico.add(condicoes[3]!);
  } else {
    arrayDinamico.add('Altenir');
  }
  arrayDinamico.insert(0, 'Leila');
  print(arrayDinamico);
  arrayDinamico.removeAt(1);
  print(arrayDinamico);
  arrayDinamico.removeRange(1, 4);
  print(arrayDinamico);
  arrayDinamico.remove('Leila');
  print(arrayDinamico);
  print(arrayDinamico.length);

  arrayDinamico.clear();
  // ignore: unnecessary_null_comparison
  print(
      // ignore: unnecessary_null_comparison
      '$arrayDinamico == null: ${arrayDinamico == null}'); // não é necessário comparar
  print('$arrayDinamico == empty: ${arrayDinamico.isEmpty}'); // melhor assim

  // arrayDinamico.length = 1;
  // print('$arrayDinamico ?? ${arrayDinamico.contains(null)}'); // esse código não deu certo

  numeros = [10, 5, 1, 2, 2.25, 7.5];
  numeros.sort(); // só organiza de forma crescente
  print(numeros);

  textos = ['Fernando', 'Leila', 'Bartolomeu'];
  textos.sort((b, a) => a.compareTo(
      b)); // decrescente - basta inverter a ordem a,b para obter uma lista crescente!
  print(textos);
}
