/*
  * Conceito
  - Interfaces são modelos para implementar metodos e atributos em nossas classes

  * Regras
  - Ao implementar uma interface devemos utilizar todos os metodos e atributos
  - No dart não tem sintaxe para interfaces, pode ser uma classe concreta ou abstrata!
  - Pode implementar mais de uma interface e deve sobescrever todos metodos e atributos!
*/

import 'Candidato.dart';

void main() {
  print('14.0) Interfaces');

  var bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL');
  bolsonaro
    ..objetivo = 'Ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a corrupção no Brasil!'
    ..escreverPostagem()
    ..ideologiaPolitica();
}
