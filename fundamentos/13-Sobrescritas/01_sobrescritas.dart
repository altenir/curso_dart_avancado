/*
  * Métodos (overide/sobreposicao != overload/sobrecarga)
  - Overide: Temo sobrescrita dos metodos da classe pai na classe herdeira

  * Construtores
  - Super se refere ao construtor da classe herdeira

  * Classes Abstratas
  - Não podem ser instaciadas servem como modelo
  - Métodos sem escopo devem ser sobrescritos nas classes herdeiras!
*/

import 'Cao.dart';

void main() {
  print('13.0) Sobrescritas de Métodos Atributos e construtores\n');

  var cao = Cao.domestico('Chloe', 'Pug', 'Femea');
  print(
      'nome: ${cao.nome} Raca: ${cao.raca} Sexo: ${cao.sexo} Idade: ${cao.idade} Docil: ${cao.docil}');
  print(
      'desenvolvimento: ${cao.desenvolvimento} tipo: ${cao.coluna == true ? 'Vertebrado' : 'Invertebrado'}');
  cao
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao();
  print(cao);
  print(
      '${cao.nome} ${cao.docil == true ? 'está amigavel' : 'não está amigavel'}');
}
