import 'Aninal.dart';
import 'Objeto.dart';
import 'Pessoa.dart';
import 'Usuario.dart';

///
/// Os construtores devem ter o mesmo nome da classe
/// Eles são iniciados quando instaciamos as classes, podendo fazer configurações iniciais
///
void main() {
  print('08.0) Construtores\n');

  Objeto objeto = new Objeto();
  objeto.nome = 'mesa';
  print('nome: ${objeto.nome}');

  Animal animal = new Animal('Chloe', 'Pug');
  print('nome: ${animal.nome} raca: ${animal.raca} idade: ${animal.idade}');

  Pessoa pessoa = Pessoa('Fernando', 36, altura: 1.83);
  print(
      'nome: ${pessoa.nome} idade: ${pessoa.idade} cor: ${pessoa.cor} altura: ${pessoa.altura}\n');

  Usuario usuario = new Usuario('user@gmail', '123456', nome: 'Fernando');
  print(
      'usuario: ${usuario.user}, senha: ${usuario.senha}, nome: ${usuario.nome}, cargo: ${usuario.cargo}\n');
  usuario.autenticar();

// dados inseridos pelo administrador
  Usuario admin = Usuario.admin('user@gmail', '123456654', nome: 'Fernando');
  print(
      '\nadmin: ${admin.user}, senha: ${admin.senha}, nome: ${admin.nome}, cargo: ${admin.cargo}\n');
  admin.autenticar();
}
