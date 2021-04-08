/*
  * Conceito
  - Stream é uma forma de monitorar eventos. Ao adicionar eventos na stream os ouvintes serão notificadas!
    > As streams fornecem uma sequência assíncrona de dados. Para processar uma stream use await() ou listen()
    > Existem dois tipos de stream: assinatura única(subscription) ou transmissão(broadcast)
    > Stream é uma sequencia com vários Futures! Ao invéz de obter um evento solicitado(Future), a stream informa que há um evento quando está pronto

  * stream
    > Fluxo que a classe StreamController() está gerenciado.

  * add()
  - Adiciona eventos na stream notificando os ouvintes que estão monitorando!

  * listen()
  - Inscreve um ouvinte na stream para aguardar notificações de eventos
    > onData: Notifica o assinante com eventos de dados da stream, se for nulo, nada acontece
    > onError: Tratamento de eventos com erro e possivel rastreamento Stack Trace. Se omitido erros, serão considerados exceptions
    > onDone: Evento chamado quando a stream é fechado
    > cancelOnError: A assinatura é cancelada automaticamente ao receber um evento erro
*/
import 'dart:async';

conceito() {
  print('18.4.1) Stream Conceito\n');

  var lista = <dynamic>[];

  // 1) controlador
  var controlador = StreamController<dynamic>();

  // 2) stream
  var stream = controlador.stream;

  // 3) inscrição de ouvintes na stream
  stream.listen((onData) {
    print('evento: $onData');
    lista.add(onData);
  }, onDone: () {
    print('Stream finalizada!\n');
    print(lista);
  });

  // 4) adicionar um evento a stream
  controlador.sink.add('Fernando');
  controlador.sink.add(36);
  controlador.sink.add(1.83);
  controlador.sink.add(!false);
  controlador.close();

  print('Monitorando...');
}

///
/// * MODEL
///
class Contador {
  var _contagem = 1, termino, erro;
  final _controlador = StreamController<int>();

  Sink<int> get sink => _controlador.sink;
  Stream<int> get stream => _controlador.stream;

  Contador({this.termino = 5, this.erro = 3}) {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _contagem < termino ? sink.add(_contagem) : sink.close();
      _contagem++;
      if (_contagem == erro) _controlador.addError('Erro intencional');
      if (_contagem > termino) timer.cancel();
    });
  }
}

model() {
  print('\n18.4.2) Stream Model\n');
  // stream
  var minhaStream = Contador(termino: 5, erro: 3).stream;

  // inscricao de ouvintes na stream
  final inscrito1 = minhaStream.listen(
      (onData) {
        print('Inscrito1: $onData');
      },
      onError: (erro) {
        print('Inscrito1: $erro');
      },
      cancelOnError: false,
      onDone: () {
        print('Inscrito1 Completo');
      });

  var pares = (e) => e % 2 == 0;
  var mapear = (e) => '$e é par';

// AULA 55 INCOMPLETA DEVIDO A ERROS
// VOLTAR PARA COMPLETAR DEPOIS DE ADQUIRIR MAIS CONHECIMENTO

//   final inscrito2 = minhaStream.listen(
//       (onData) {
//         print('Inscrito2: $onData');
//       },
//       onError: (erro) {
//         print('Inscrito2: $erro');
//       },
//       cancelOnError: false,
//       onDone: () {
//         print('Inscrito2 Completo');
//       });
}

main() {
  conceito();
  model();
}
