import 'package:projeto/projeto.dart';
import 'package:test/test.dart';

void main() {
  // TESTES EMVARIAVEIS
  test('Converter Strings em Array', () {
    var texto = 'Fernando,Leila,Chloe';
    expect(texto.split(','), equals(['Fernando', 'Leila', 'Chloe']));
  });

  // TESTE EM FUNÇÕES
  test('calculate', () {
    expect(calculate(), 42);
  });

  group('Manipulação de ins', () {
    test('Resto da Dvisão', () => expect(restoDivisao(12, 3), equals(0)));
    test('Verificar maior idade', () {
      expect(maiorIdade(18), 'Adulto');
      expect(maiorIdade(17), 'Adolescente');
      expect(maiorIdade(13), 'Criança');
    });
  });

  group('manipulação de String', () {
    test(
        'converter em lista',
        () => expect(
            converterEmLista('Leila Martins'), equals(['Leila', 'Martins'])));

    test(
        'Recuperar Nome',
        () => expect(
            recuperarNome(['Altenir', 'Gama']),
            allOf(
                contains('lten'), isNot(startsWith('Alme')), endsWith('nir'))));
  });
}
