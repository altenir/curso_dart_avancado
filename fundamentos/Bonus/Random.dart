import 'dart:math';

main() {
  print('3) Ramdom\n');

  var random = new Random();
  var min = 1, max = 5;
  for (var i = 0; i < 3; i++) {
    print(random.nextInt(max + 1));
  }
  for (var i = 0; i < 3; i++) {
    print(min + random.nextInt(max));
  }
  for (var i = 0; i < 3; i++) {
    print(random.nextDouble().toStringAsFixed(2));
  }
  for (var i = 0; i < 3; i++) {
    print(random.nextBool());
  }

  print(Utilidades.criarString(10));
}

class Utilidades {
  static const _alfabeto =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';

  static String criarString(int numeroDeLetras) {
    var random = Random(DateTime.now().microsecondsSinceEpoch);
    String resultado = '';
    for (var i = 0; i < numeroDeLetras; i++) {
      resultado += _alfabeto[random.nextInt(_alfabeto.length + 1)];
    }
    return resultado;
  }
}
