/*
  * Conceito
  - Interfaces são modelos para implementar metodos e atributos em nossas classes

  * Regras
  - Ao implementar uma interface devemos utilizar todos os metodos e atributos
  - No dart não tem sintaxe para interfaces, pode ser uma classe concreta ou abstrata!
  - Pode implementar mais de uma interface e deve sobescrever todos metodos e atributos!
*/
abstract class Presidenciavel {
  String? partido;
  String? ideologia;

  void ideologiaPolitica(); // método sem escopo
}
