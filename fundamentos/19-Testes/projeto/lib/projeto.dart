int calculate() {
  return 6 * 7;
}

dynamic converterEmLista(String nome) {
  return nome.split(' ').toList();
  // return nome.split(' ').map((e) => e.toUpperCase()).toList();
}

String maiorIdade(int idade) {
  try {
    if (idade < 0) throw Exception('A idade não pode ser negativa');
    return idade < 14
        ? 'Criança'
        : idade < 18
            ? 'Adolescente'
            : 'Adulto';
  } catch (e) {
    print('Excecao: $e');
    return null;
  }
}

dynamic recuperarNome(List<String> nomes) {
  return nomes[0];
}

double restoDivisao(double a, double b) {
  // return a.remainder(b) - 1;
  return a.remainder(b);
}
