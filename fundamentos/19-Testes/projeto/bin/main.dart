/*
 * *Asset
 * - usa lógica boleana para testar afirmações no modo debug!
 * - Try Catch pode ser usado para tratar a exceção!
 
 * * Test:
 * - Certifique-se de ter o package "test" em "dev dependecie" no arquivo pubspec.yalm
 * - Atualize o packages no terminal usando o "pub get"
 * - Execute os testes na pasta raiz usando "pub run test"
 * - Podemos testar variaveis, funçõe e efeturar teste em grupos
 * * Sintaxe
    test("descrição", () {
     expect(valorReal, valorEsperado)
    });
 */

import 'package:projeto/projeto.dart' as projeto;

void main(List<String> arguments) {
  print('19.0.0) Testes Unitários');

  print('Hello world: ${projeto.calculate()}!');
  print('converterEmLista: ${projeto.converterEmLista('Fernando Martins')}!');
  print('Verificar maior idade: ${projeto.maiorIdade(-18)}!');
  print('Recuperar Nome: ${projeto.recuperarNome(['fernando', 'Martins'])}!');
  print('Resto da divisão: ${projeto.restoDivisao(12, 3)}!');

  // fora do try catch gera excecao!
  String texto;
  assert(texto == null);

  try {
    var telefone = '123456789';
    assert(telefone.length == 9, 'O telefone deve conter 9 digitos');
  } catch (e) {
    print('Excecao: $e');
  }
}
