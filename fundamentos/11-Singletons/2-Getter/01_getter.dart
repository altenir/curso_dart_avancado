/*
  *Singleton
  - É um padrão de projeto para que exista apenas uma instância da classe
  - O Construtor nomeado privado sem o construtor default impede de instancia a classe
  * Getter
  - A _instancia privada é acessada atravé do get
*/

import 'PessoaGetter.dart';

void main() {
  print('11.2) Singleton Getter\n');

  print(PessoaGetter.instancia.nome);
  PessoaGetter.instancia.nome = 'Fernando';
  print(PessoaGetter.instancia.nome);
  var p1 = PessoaGetter.instancia;
  var p2 = PessoaGetter.instancia;
  p1.nome = 'Leila';
  print(PessoaGetter.instancia.nome);
  p2.nome = 'Chloe';
  print(PessoaGetter.instancia.nome);
  print(p2 == PessoaGetter.instancia);
}
