/*
  *Singleton
  - É um padrão de projeto para que exista apenas uma instância da classe
  - O Construtor nomeado privado sem o construtor default impede de instancia a classe
  * Static
  - A instancia pode ser acessada diretamente
*/

import 'PessoaStatic.dart';

void main() {
  print('11.1) Singletons Static\n');

// Estamos acessando sempre a mesma instancia
// As variaveis podem ser diferentes mais a instancia é a mesma
  print(PessoaStatic.instancia.nome);
  PessoaStatic.instancia.nome = 'Fernando';
  print(PessoaStatic.instancia.nome);
  var p1 = PessoaStatic.instancia;
  var p2 = PessoaStatic.instancia;
  print(identical(p1, p2));
  p1.nome = 'Leila';
  print(PessoaStatic.instancia.nome);
  p2.nome = 'Chloe';
  print(PessoaStatic.instancia.nome);
  print(identical(p1, p2));
  print(p2 == PessoaStatic.instancia);
}
