///
/// Funções com parametros posicionados devem obedecer a ordem declarada!
/// Funções com parametros nomeados devemos declarar o nome do parametro!
/// Os parametros posicionados ou nmeados devem começar pelo último parametro da função!
///

funcaoParametros() {
  print('06.3.1) Funções com parametros posicionados e default\n');

  void exibirDados1(String nome, [int? peso, double? altura]) {
    print('Nome: $nome peso: $peso altura: $altura');
  }

  exibirDados1('Fernando');
  exibirDados1('Fernando', 65);
  exibirDados1('Fernando', 65, 1.83);

  print('06.3.2) Funções com parametros nomeados e default\n');

  void exibirDados2(String nome, {int? peso, double? altura}) {
    print('Nome: $nome peso: $peso altura: ${altura ?? 'Não informada'}');
  }

  exibirDados2('Fernando');
  exibirDados2('Fernando', peso: 65);
  exibirDados2('Fernando', altura: 1.83, peso: 65); // pode passar fora da ordem

  print('06.3.3) Funções como parametros para outras funções\n');
  void falar() {
    print('Essa é uma função passada com parametro nomeado');
  }

  void saudacao(String nome, {Function? funcaoFalar}) {
    print('Olá, eu sou $nome');
    funcaoFalar!();
  }

  saudacao('Fernando', funcaoFalar: falar);
  saudacao('Fernando',
      funcaoFalar: () =>
          print('Essa é uma função anonima passada como parametro nomeado!'));
}

void main() {
  funcaoParametros();
}
