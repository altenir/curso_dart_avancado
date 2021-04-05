///
/// * Fold
/// - Compara os elementos da coelção retornando 1 unico elemento resultante!
/// - O valor inicial se torna o anterior e o indice 0 se torna o atual
/// - Podemos setar um valor inicial

listFold() {
  print('\n16.1.6) List Fold\n');

  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);
  int valorInicial = 10;
  int resultado = numerosPares.fold(valorInicial, (anterior, atual) {
    print('$anterior + $atual');
    return anterior + atual;
  });
  print('$resultado\n');

  int valorInicial2 = 30;
  int resultado2 = numerosPares.fold(valorInicial2, (anterior, atual) {
    print('$anterior - $atual');
    return anterior - atual;
  });
  print(resultado2);
}

void main() {
  listFold();
}
