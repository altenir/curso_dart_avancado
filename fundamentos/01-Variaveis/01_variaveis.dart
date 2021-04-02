void main() {
  print('Hello World');
  // boas práticas de programação CamelCase, não abrevie o nome das variaveis.

  /*
  "backspace": "\b",
  "formate": "\f",
  "newline": "\n",
  "return": "\r",
  "tab": "\t"
  */

  var valorA = 10; // é dinamica até se atribuída
  var valorB = 4;
  var valorC = 2.5;
  var resultado;
  resultado = valorA + valorB + valorC;
  print(resultado);

  var salario = 1000, descontos = 250;
  var conta = salario - descontos;
  print(conta);

  var numero = 3 + ((2 * 4) + (10 / 5));
  print(numero);

  print('');
  print("concatenar "
      "Strings "
      "é simples assim");

  var texto1 = '\nAltenir ';
  var texto2 = " Almeida";
  var texto3 = '''\n da
  Gama\n''';
  print(texto1 + texto2 + texto3);

  var verdadeiro = true;
  var falso = false;
  print('verdadeiro = ${verdadeiro}'); // interpolação
  print('falso = ' + "${falso}"); // concatenação
  print(''.runtimeType); // descobre o tipo de variavel em tempo de execução

  const pi = 3.14; // variavel constante é atribuída em tempo de compilação
  var nome = 'Altenir';
  String sobrenome = 'Gama';
  int idade = 47;
  double altura = 1.83;
  bool adulto = true;
  print('\nNome: ' +
      "$nome \n letras: ${nome.length} " +
      """\nSobrenome $sobrenome letras ${sobrenome.length}\n""");

  print(''' idade: $idade
      altura: $altura
      adulto: $adulto
      \npi: $pi\n''');

  dynamic variavel = 2.0;
  variavel = 2;
  variavel = 'dois';
  variavel = true;
  print(variavel);
}
