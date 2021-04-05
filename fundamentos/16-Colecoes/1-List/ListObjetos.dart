import 'Models/Caracteristica.dart';
import 'Models/Carro.dart';
import 'Models/Multa.dart';
import 'Models/Pessoa.dart';
import 'Models/Proprietario.dart';
import 'Models/Venda.dart';
import 'Models/Vendedor.dart';

void main() {
  print('16.1.7 List manipulando Objetos');

  Pessoa p1 = new Pessoa('Fernando', 'Martins', identidade: 12345698);
  Pessoa p2 = new Pessoa('Leila', 'Martins', identidade: 9865431);

  List<Pessoa> pessoas = [p1, p2];
  pessoas.add(Pessoa('Chloe', 'Martins'));
  for (var i = 0; i < pessoas.length; i++) {
    print(
        'for: ${pessoas[i].nome} ${pessoas[i].sobrenome} id: ${pessoas[i].identidade}');
  }

  print('');

  for (var pessoa in pessoas) {
    print(
        'for in: ${pessoa.nome} ${pessoa.sobrenome} id: ${pessoa.identidade}');
  }

  print('');

  pessoas.forEach(
      (e) => print('foreach: ${e.nome} ${e.sobrenome} id: ${e.identidade}'));

  print('16.1.8) List ordenando Objetos');
  List<Vendedor> vendedores = [];
  vendedores.add(Vendedor('Fernando', [
    Venda('iPhoneX', 4199.99),
    Venda('MacBookPro', 5300.00),
    Venda('GalaxS10', 3500.25)
  ]));
  vendedores.add(Vendedor('Leila', [
    Venda('iPhone8', 3000.00),
    Venda('GalaxS10', 3500.25),
    Venda('iPhoneX', 4199.99)
  ]));
  vendedores.add(Vendedor('Chloe', [
    Venda('iPhoneX', 4199.99),
    Venda('iPhoneX', 4199.99),
    Venda('GalaxS10', 3500.25)
  ]));
  // Organizar lista de vendas pela soma total
  /*
                vendedores.sort((b, a) => (a.vendas
      .fold(0,
          (anterior, atual) => (anterior == null ? 0 : anterior.preco + atual.preco))
      .compareTo(b.vendas.fold(
          0,
          (anterior, atual) =>
              (anterior == null ? 0 : anterior + atual.preco)))));
              */

  /// AULA INCOMPLETA POR MOTIVOS DE ERROS DE NULL Sefaty

  print('\n16.1.9) List escopo de loops em Objetos\n');
  List<Proprietario> proprietarios = [];
  proprietarios.add(Proprietario(
    'Fernando',
    'Rua bom ajrdim, 000',
    [
      Carro(
        'Honda',
        'Civiv',
        'ABC1234',
        Caracteristica('Passeio', 5, 130, 'Gasolina'),
        multas: [Multa('Excesso de velocidadde', 'grave', 7)],
      ),
      Carro(
        'Fiat',
        'palio',
        'ASD1245',
        Caracteristica('Passeio', 5, 103, 'Gasolina'),
        multas: [
          Multa('Excesso de velocidadde', 'Gravissima', 7),
          Multa('stacionar Local proibido', 'Grave', 5),
        ],
      )
    ],
  ));

  proprietarios.add(Proprietario(
    'Leila',
    'Rua bom ajrdim, 000',
    [
      Carro(
        'Honda',
        'Civiv',
        'ABC1234',
        Caracteristica('Passeio', 5, 130, 'Gasolina'),
        multas: [Multa('Excesso de velocidadde', 'grave', 7)],
      ),
      Carro(
        'Fiat',
        'palio',
        'ASD1245',
        Caracteristica('Passeio', 5, 103, 'Gasolina'),
        multas: [
          Multa('Excesso de velocidadde', 'Gravissima', 7),
          Multa('stacionar Local proibido', 'Grave', 5),
        ],
      )
    ],
  ));

  // proprietarios.sort((b, a) => a.nome.compareTo(b.nome)); // ordenando pelo nome
  proprietarios.forEach((e) => e.carros.forEach((e) => e.multas.sort((a, b) => a
      .pontos
      .compareTo(b.pontos)))); // descomente para multas em ordem crescente

  for (var i = 0; i < proprietarios.length; i++) {
    var carros = proprietarios[i].carros;
    for (var carro in carros) {
      carro.multas.forEach((e) {
        print(
            '${proprietarios[i].nome} \t ${carro.modelo} ${carro.caracteristicas.tipo} \t ${e.descricao} ${e.tipo} - ${e.pontos} pontos');
      });
    }
  }
}
