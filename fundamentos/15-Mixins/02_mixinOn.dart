/*
  * Conceito
  - Mixin permite implementar métodos e atributos de outras classes
  - Por ser uma classe especial, os mixins não precisam de construtores.
  - Para definirmos as classes que poderão utilizar os métodos dos mixins, utilizamos a palavra with

  * Regras
  - Devem ser implementados antes das interfaces
  - Podem ser implementados a partir de uma classe concreta ou abstrata
  - Não pode implementar uma classe que estenda e estender de uma classe mixin
  - Pode implementar mais de um mixin, e não é obrigatório usar todos métodos e atributos
  - As classes que possuem métodos iguais serão sobrescritas em ordem até a classe herdeira

  * ON
  - É obrigatório declarar sua classe como mixin
  - Restringe o uso do mixin as classes que estendem ou implementam a classe declarada
  
  - Basicamente, os Mixins são recursos presentes no Dart que nos permitem adicionar 
  um conjunto de “características” a uma classe sem a necessidade de utilizar uma herança.
  https://www.treinaweb.com.br/blog/o-que-sao-mixins-e-qual-sua-importancia-no-dart/
*/

// CLASSE ABSTRATA
abstract class Artista {
  void acao() {
    print('Performista...');
  }
}

// MIXINS
mixin Cantor on Artista {
  void acao() {
    print('Canta');
  }
}

class Dancarino {
  void acao() {
    print('Dança');
  }
}

// INTERFACE
abstract class Acao {
  void executar();
}

// CLASSES CONCRETAS
// comente para ver a hierarquia de sobrescrita!
class Musico extends Artista with Dancarino, Cantor implements Acao {
  void acao() => print('Compoem');

  @override
  void executar() {
    super.acao();
    acao();
  }
}

// A classe MC não pode cantar nem dançar porque ele não extends de Artista
class MC /**with Dancarino */ implements Acao {
  void acao() => print('Mixa .. bota o batidão');

  @override
  void executar() {
    // super.acao();
    acao();
  }
}

main() {
  print('15.1) Mixin On\n');
  Musico musico = Musico();
  musico.executar();

  MC mc = MC();
  mc.executar();
}
