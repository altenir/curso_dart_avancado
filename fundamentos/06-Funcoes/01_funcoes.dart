semRetorno() {
  print('06.0) Funções em retorno\n');

  void conceito() {
    print('Funcao void sem retorno');
  }

  void somaValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    print('Soma: $valorA + $valorB = $resultado');
  }

  void verificarMaiorIdade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }
    print('$nome $resposta de idade!\n');
  }

  void contagemRegressiva(int numero) {
    for (var i = numero; i >= 0; i--) {
      print('Contagem: ${(i == 0) ? 'VAI!!!!' : i}');
    }
  }

  void converterKparaMilhas(dynamic array) {
    dynamic milha = 0.62121;
    for (dynamic item in array) {
      print('$item\t Km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    print('Array convertido e arrendodado!\n');
  }

  conceito();
  somaValores(2, 3);
  verificarMaiorIdade('Fernando', 47);
  contagemRegressiva(3);
  converterKparaMilhas(
      [1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]);
}

comRetorno() {
  print('\n06.1) Funcoes com retorno\n');

  String conceito() {
    return 'Função com retorno String';
  }

  String somaValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    return 'Soma: $valorA + $valorB = $resultado\n';
  }

  String verificarMaiorIdade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }
    return '$nome $resposta de idade!\n';
  }

  String contagemRegressiva(int numero) {
    var resultado;
    for (var i = numero; i >= 0; i--) {
      (i != 0) ? print('Contagem: $i') : resultado = 'Contagem Vai!!!';
    }
    return resultado;
  }

  String converterKparaMilhas(dynamic array) {
    dynamic milha = 0.62121;
    for (dynamic item in array) {
      print('$item\t Km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    return '\nArray convertido e arrendodado!\n';
  }

  print(conceito());
  print(somaValores(3, 2));
  print(verificarMaiorIdade('Altenir', 47));
  print(contagemRegressiva(5));
  print(converterKparaMilhas(
      [1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]));
}

void main() {
  semRetorno();
  comRetorno();
}
