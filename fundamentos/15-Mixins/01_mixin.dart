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

import 'dart:collection';

abstract class Cidadao {
  String? nome;

  Cidadao(this.nome);

  void objetivosPessoais(); // método sem escopo

  void direitosDeveres() {
    print('Todo cidadao tem direitos e deveres');
  }
}

abstract class Presidenciavel {
  String? partido;
  String? ideologia;

  void ideologiaPolitica(); // método sem escopo
}

class Postagem {
  String? postagem;
  void escreverPostagem() {
    print('');
  }
}

// ##################
// MIXINS
mixin Elegivel on Cidadao {
  bool elegivel = false;
  void prestacaoConta();
}

abstract class Conta {
  double? _saldo, salario = 33000;
  get saldo => this._saldo;
  set depositar(double valor) => this._saldo = valor;

  bool declaracaoRenda() => this._saldo! / 12 < salario!;
}

// ##################
// CLASSE CONCRETA
class Candidato extends Cidadao
    with Elegivel, Conta
    implements Postagem, Presidenciavel {
  String? objetivo;

  Candidato(String nome, {this.ideologia, this.partido}) : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  // INTERFACES
  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no facebook: $postagem');
  }

// INTERFACE Presidenciavel
  @override
  String? ideologia;
  String? partido;

  @override
  void ideologiaPolitica() {
    print(
        '$nome é candidato com ideologia de $ideologia pelo partido $partido');
  }

  // mixins
  @override
  void prestacaoConta() {
    elegivel = super.declaracaoRenda();
    if (elegivel) {
      print(
          'Candidato $nome passou na prestação de contas\nAutorizado a concorrrer nas eleições 2018!');
    } else {
      print(
          'Candidato $nome foi barrado na prestação de contas\nsaldo $saldo excede a renda declarada para Presidente!');
    }
  }
}

void main() {
  print('15.0) Mixin');

  var bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL');
  bolsonaro
    ..objetivo = 'Ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a corrupção no Brasil!'
    ..escreverPostagem()
    ..ideologiaPolitica()
    ..depositar = 395000
    ..prestacaoConta();
}
