import 'Pessoa.dart';

/**
 * Final
 * inicializada apenas quando acessada em tempo de execução, deve ser declarada!
 * Em coleções dinal nem todo o coneúdo será final
 */

void main() {
  print('10.2) modificadores Final\n');

//? Objeto em queda livre leva 5s para chegar ao solo! Qual a velocidade maxima do objeto?
  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo; // v = g * t
  print('Velocidade maxima $velocidade m/s\n');

  for (var i = 0; i <= 3; i++) {
    final indice = i;
    print('contagem: $indice');
  }

  var pessoa = Pessoa('Fernando', ['Leila', 'Chloe']);
  pessoa.nome = 'Fernando Martins';
  // pessoa.familiares = []; // erro: atributo final
  print('Nome: ${pessoa.nome} Familiares: ${pessoa.familiares}');
}
