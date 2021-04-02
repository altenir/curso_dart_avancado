/**
 * Tipos de variaveis
 * Num(int, double), String, bool, dynamic
 */

void main() {
  print('01.1) Variaveis Funções');

  num pi = 3.14;
  print(pi.floor());
  print(pi.round());
  print(pi.ceil()); // arredonda por um inteiro maior, mais proximo
  print(pi.clamp(3, 3.1)); // intervalo mais proximo do inteiro
  print(pi.compareTo(
      3)); // 1 = se for inferior ao numero comparado, 0 = se for igual e 1 se for maior
  print(pi.remainder(3)); //
  print(pi.toInt());
  print(pi.toDouble());
  print(pi.toString());
  print(pi.toStringAsFixed(1)); // casas decimais
  print(pi.truncate());
  print(pi.isNegative);
  print(pi.isInfinite);
  print((pi / 0).isInfinite);
  print(12.gcd(16)); // máximo divisor comum
  print('1'.padLeft(2, '0'));

  print('');

  String nome = 'Altenir';
  String nomeCompleto = '\t Altenir Gama';
  print(nome.toUpperCase());
  print(nome.toLowerCase());
  print(nomeCompleto.trim());
  print(nomeCompleto.split(' '));
  print(nome.split(''));
  print(nome.substring(3, 4));
  print(nome.startsWith('A'));
  print(nome.startsWith('Gama', 3));
  print(nome.replaceAll('A', 'o'));
  print(nome.replaceFirst('Alt', 't'));
  print(nomeCompleto.replaceFirst('a', 'o', 7));
  print(nome.replaceRange(3, 5, ''));
  print(nomeCompleto.trim().split(' '));
  print(nome.contains('a'));
  print(nome.contains('r', 1));
  print(nome.indexOf('alt'));
  print(nome.length);
  print(nome.endsWith('o'));
  print(nome.compareTo('Altenir')); // 0 se for igual
  print(nome.compareTo('Alt')); // 1 possuí
  print(nome.compareTo('Lidiane')); // -1 diferente
  print(''.isEmpty);
  print(double.parse('12.55'));
  print('1' is String);
  print(int.parse('12') is int);
  print(nome.lastIndexOf('r'));
  String sopa = 'sopa de letrinhas';
  int index = sopa.indexOf(' de ');
  print('A sopa é ${sopa.substring(index).trim()}');

  print('');

  num numero = 3.14;
  print(numero is double);
  print(numero is! double);
}
