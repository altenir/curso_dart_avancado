/*
- O temporizador leva ois argumentos, uma duração e uma função para executar
- A duração deve ser uma instancia de Duration
*/
import 'dart:async';

int contador = 0;

String tempoAgora() {
  DateTime tempo = DateTime.now();
  String hora = '${tempo.hour}:${tempo.minute}:${tempo.microsecond}';
  return hora;
}

main() {
  print('2) Timer\n');
  print('Compilado as ${tempoAgora()}');

  Timer.run(() => print('executado as ${tempoAgora()}'));

  Timer(Duration(seconds: 2), () => print('Após 2 segundos! ${tempoAgora()}'));

  Timer.periodic(Duration(seconds: 1), (Timer timer) {
    contador++;
    if (contador == 4) print('Após 4 segundos! ${tempoAgora()}');
    if (contador == 6) {
      print('Após 6 segundos! Script finalizado as ${tempoAgora()}');
      timer.cancel();
    }
  });
}
