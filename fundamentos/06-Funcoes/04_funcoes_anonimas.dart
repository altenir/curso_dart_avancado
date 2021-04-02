///
/// Funções Anonimas não possuem nomes!
///
funcoesAnonimas() {
  print('06.4.0) Funções anonimas Conceito\n');

  print('''
SINTAXE
(){
  print('Funcao anonima!);
}

() => print('Funcao anonima usando sintaxe Arrow!');
''');

  print('\06.4.1) Funcoes Anonimas como Variaveis\n');

  var variavelAnonima = () => print('Variavel anonima!');
  variavelAnonima();

  var variavelAnonimaComParametro =
      (String msg) => print('Variavel anonima $msg');
  variavelAnonimaComParametro('com parametro!');

  print('\06.4.2) Funcoes Anonimas como Parametros\n');
  void executarFuncao(Function funcao) => funcao();
  executarFuncao(() => print('Função anonima pasasda como parametro!'));
}

void main() {
  funcoesAnonimas();
}
