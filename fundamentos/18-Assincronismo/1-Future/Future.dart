///
/// * Future:
///  - é objeto que retorna um valor de erro, resultado de uma execucao assincrona/futura
///

// função retonra string
String tarefa({int tempo = 1}) {
  var msg = status(tempo);
  return 'Status: $msg';
}

Future<String> status([int? tempo]) {
  return Future.delayed(
      Duration(seconds: tempo!), () => 'Primeira Tarefa finalizada\n');
}

void novaTarefa({int tempo = 1}) {
  Future.delayed(
      Duration(seconds: tempo), () => print('Segunda Tarefa finalizada\n'));
}

// lançando uma excecao
excecao({int tempo = 1}) => Future.delayed(
    Duration(seconds: tempo), () => throw Exception('Erro intencional'));

void contagem({int segundos = 3}) {
  print('Carregando..\n');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('\nConcluido!');
    });
  }
}

main() {
  print('18.0.0) Futures\n');
  print(tarefa(tempo: 4)); // o print é executo antes do termino do future!
  novaTarefa(tempo: 4); // o print é executo na future!
  excecao(tempo: 6);
  contagem();
}
