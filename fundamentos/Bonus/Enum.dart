/*
* Conceito
- Um enumerador é usado para definir valores constantes nomeados
*/
enum Status { indefinido, rodando, parado, pausado }
enum Time { hour, day, week, month, year }

String timeToString(Time time) {
  switch (time) {
    case Time.hour:
      return '1h';
      break;
    case Time.day:
      return '1d';
      break;
    case Time.week:
      return '1w';
      break;
    case Time.month:
      return '1m';
      break;
    case Time.year:
      return '1y';
      break;
    default:
      return '1h';
  }
}

main() {
  print('5) Enum\n');

  print('lenght: ${Status.values.length} values: ${Status.values}\n');
  print('Acesando o index: ${Status.values[1]}');
  print('Rodando: ${Status.rodando}, indice: ${Status.rodando.index}');
  print('');
  for (var i = 0; i < Status.values.length; i++) {
    print('For Indice: $i valor: ${Status.values[i]}');
  }
  print('');
  for (var value in Status.values) {
    print('forIn indice: ${value.index} value: ${value}');
  }
  print('');
  Status.values.forEach(
      (element) => print('forEach indice: ${element.index} valor: $element'));
}
