import 'Models/Carro.dart';
import 'Models/Pessoa.dart';

main() {
  print('16.4.5) Map Objetos\n');

  Carro c1 = Carro('Honda', 'Civil');
  Carro c2 = Carro('Toyota', 'Corola');
  Carro c3 = Carro('Fiat', 'Palio');
  Map<String, Carro> carros = {'0': c1, '1': c2};
  carros['2'] = c3;
  for (var i = 0; i < carros.length; i++) {
    // final modelo = carros['Honda']!.modelo;
    print(
        'for: $i ${carros["${i}"]!.modelo}'); // se ordenado por string ou num pode usar o for
  }
  for (String chave in carros.keys) {
    final carro = carros[chave];
    print('forIn: $chave ${carro!.modelo}');
  }
  carros.forEach((chave, valor) => print('ForEach: $chave ${valor.modelo}'));

  print('\n16.4.5) Map Singletons\n');

  Pessoa p1 = Pessoa('Fernando', idade: 36, peso: 65);
  Pessoa p2 = Pessoa('Leila', idade: 31, peso: 60);
  Pessoa('Fernando', idade: 63);
  Pessoa('Leila', idade: 13);
  Pessoa('Chloe');
  Pessoa.mostrarPessoas();
  p1.peso = 70;
  Pessoa.mostrarDetalhe('Fernando');
  p2.peso = 61.1;
  Pessoa.alterardetalhes('Chloe', idade: 1, peso: 7);
  Pessoa.mostrarPessoas();
}
