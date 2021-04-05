/*
  * Conceito:
  - List é uma coleção dinamica e ordenada de elementos entre colchetes []
  - forEach: Aplica a função anonima a cada elemento da nossa coleção
  - Todo array é um List<?>
*/

///
/// * Map:
/// - Transforma/seleciona os elementos de uma coleção criando uma nova do mesmo tamanho!
///

listMap() {
  print('\n16.1.2) List Map\n');

  List<String> frutas = ['Morango', 'Banana', 'Tomate'];
  List<String> frutasMapeadas = frutas.map((e) => '$e é uma fruta!').toList();
  print(frutasMapeadas);

  List<int> inteiros = [1, 5, 10];
  var incrementar = (int e) => ++e; // e++
  final dobro = (int e) => e * 2;
  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobro).toList();
  print(inteirosMapeados);

  List<double> doubles = [2.75, 5.5, 7.25];
  final triplo = (e) => e * 3;
  final Function moeda =
      (e) => 'RS ${e.toDouble.toStringAsFixed(2).replaceFirst('.', ',')}';
  Function porcentagem(double desconto) =>
      (double valor) => desconto * valor; // closure
  List<dynamic> doubleMapeados = doubles
      .map(triplo)
      .map(porcentagem(0.9))
      .toList(); // não consegui passar a porcentagem, voltar depois para descobrir
  print(doubleMapeados);
}

main() {
  listMap();
}
