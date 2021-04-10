/*
  *Síncrona:
  - Operações síncronas: Bloqueia a execução até que seja concluída!
  - Funções síncronas: Executam somente operações síncronas.

  *Assíncrona:
  - Operações assíncronas: Permite executar outras operações enquanto são processada.
  - Funçõesassíncrona: Executam ao menos uma operação assincrona e operações síncronas.

  *Await:
  - Indica a espera de uma operação assíncrona, conclusão de uma future!

  *Async:
  - Deve ser usado em toda função que tenha operações assincronas, Await!
*/

///
/// *FUNÇÕES ASSÍNCRONAS
///

// função retonra string
Future<String> tarefa({int tempo = 1}) async {
  var msg = await status(tempo);
  return 'Status: $msg';
}

Future<String> status([int? tempo]) async {
  try {
    if (tempo! < 4)
      throw Exception('Tempo insuficiente para o load programado');
    return Future.delayed(
        Duration(seconds: tempo), () => 'Primeira Tarefa finalizada\n');
  } catch (e) {
    print('catch: $e');
    return Future.delayed(Duration(seconds: 0), () => '0');
  }
}

///
/// *FUNÇÕES SINCRONA
///
void contagem({int segundos = 3}) {
  print('Carregando..\n');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('\nConcluido!');
    });
  }
}

main() async {
  print('18.2.0) Async\n');
  contagem(segundos: 3); // função sincrona!

  print(await tarefa(tempo: 3)); // função assíncrona
}
