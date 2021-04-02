main() {
  print('03.1) Ternário\n');

  if (true) {
    print('Verdadeiro');
    // ignore: dead_code
  } else {
    print('Falso');
  }

  // ignore: dead_code
  print('${!true ? 'Verdadeiro' : 'Falso'}');

  int idade = 17;
  print((idade < 14)
      ? 'Criança'
      : (idade < 18)
          ? 'Adolescente'
          : 'Adulto');

  int nota = 70;
  String resultado = (nota < 40)
      ? 'reprovado'
      : (nota < 70)
          ? 'Recuperação'
          : 'Aprovado';
  print(resultado);

  int numero = 12;
  print(
      'Número: $numero é ${(numero % 2 == 0) ? 'par' : 'impar'} e ${(numero >= 0) ? 'positivo' : 'negativo'}!');

  int multiplo = 3;
  print(
      'Número: $numero ${(numero % multiplo == 0) ? 'é' : 'não é'} multiplo de $multiplo');

  int ano = 1984;
  print(
      'Ano: $ano ${(ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0) ? 'é bissexto' : 'não é bissexto'}');
}
