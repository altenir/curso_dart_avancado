/*
  * Regras
  - Uma classe pode ter somente uma herança

  * Construtores
  - Devem obter a ordem dos parametros
  - Parametros default devem ser nomeados ou posicionados
  - Tratamento e tipagem de parametros deve ser feito na classe herdeira
*/

import 'Cao.dart';

void main() {
  print('12.0) Herança de atributos métodos e construtores');

  var cao = Cao('Chloe', 'Pug', 'Femea');
  print(
      'Nome: ${cao.nome} raca: ${cao.raca} sexo: ${cao.sexo} idade: ${cao.idade} docil: ${cao.docil}');

  cao
    ..dormir()
    ..alimentar()
    ..acao();
  print('${cao.nome} ${cao.docil ? 'esta amigavel' : 'não está amigavel'}');
}
