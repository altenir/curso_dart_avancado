/*
 *Conceito
 - Then registra callbacks que serão chamadas quando o Future for concluído.
    > onValue: Valor pasado ao termino do Future.
    > catchError: Se omitido é lançado como uma excepetion
    > test: Se qualquer logica retornar true é lançada a exception!
    > whereComplite: Chama uma função anonima ao termino do Future
*/

///
/// *FUNÇÕES ASSÍNCRONAS
///
Future<String> tarefa({int tempo = 1}) {
  return status(tempo).then((msg) {
    return '\nStatus: $msg';
  }).catchError((onError) {
    print('CatErrr: $onError');
  },
      test: (onError) =>
          onError is Future && onError.runtimeType == Future).whenComplete(
      () => {print('Future completa')});
  // var msg = status(tempo);
  // return 'Status: $msg';
}

Future<String> status([int? tempo]) {
  return Future.delayed(
      Duration(seconds: tempo!), () => Future.error('Erro intencinal'));
  // Duration(seconds: tempo!), () => 'Primeira Tarefa finalizada\n');
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

main() {
  print('18.3.0) Then\n');

  contagem(segundos: 3);
  tarefa(tempo: 4).then((onValue) => print(onValue)); // Função assíncrona
}
