/*
  *Singleton
  - É um padrão de projeto para que exista apenas uma instância da classe
  - O Construtor nomeado privado sem o construtor default impede de instancia a classe
  * Factory
  - O construtor factory é usao para retornar/manter a instancia original
  - O construtor factory é capaz de retornar valores
*/

import 'PessoaFactory.dart';
import 'PessoaInstancia.dart';

singletonFactory() {
  print('11.3) Singletons Factory\n');

  var p1 = new PessoaFactory();
  print(p1.nome);
  p1.nome = 'Fernando';
  print(PessoaFactory.instancia.nome);
  PessoaFactory.instancia.nome = 'Leila';
  print(p1.nome);

  var p2 = PessoaFactory();
  p2.nome = 'Chloe';
  print(PessoaFactory.instancia.nome);
  print(identical(p1, PessoaFactory.instancia));
  print(p2 == PessoaFactory.instancia);
}

singletonInstancia() {
  print('\n11.3) Singletons Instancia\n');

  var p1 = new PessoaInstancia(nome: 'Fernando');
  print('nome: ${p1.nome} identidade: ${p1.identidade}');
  var p2 = new PessoaInstancia(nome: 'Fernando');
  print('nome: ${p2.nome} identidade: ${p2.identidade}');
  p2.nome = 'Fernando Martins';
  print('nome: ${p1.nome} identidade: ${p1.identidade}');
  print(identical(p1, p2));
  print(p2 == PessoaInstancia);
}

void main() {
  singletonFactory();
  singletonInstancia();
}
