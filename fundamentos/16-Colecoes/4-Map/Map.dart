///
/// * Conceito
/// - Map é uma coleção dinamica e customizável de chaves e valores entre {}. As chaves são únicas, e os valores não se repetem!
/// - Posso ter valores iguais em chaves diferentes
///

linkedHashMap() {
  print('16.4.0) LinkedHashMap == Map\n');

  List<String> nomes = ['Fernando', 'Leila'];
  Map<int, dynamic> nomesMap = nomes.asMap(); // converte uma Lista em Map
  print('\n$nomesMap');
  nomesMap.forEach((chave, valor) => print('$chave: $valor'));

  Map<String, dynamic> frutas = Map();
  frutas['banana'] = 'amarala';
  frutas['banana'] = 'verde'; // mesma chave atualiza o valor
  frutas['goiaba'] = 'amarela';
  frutas['maca'] = 'vermelha';
  print('\n$frutas');
  print(frutas.containsKey('banana'));
  print(frutas.containsKey('azul'));
  print(frutas['banana']);
  frutas.clear();
  // frutas[null] = null; // não aceita null
  print('\n$frutas\n');

  Map<String, dynamic> usuario =
      Map.from({'nome': 'Fernando', 'idade': 36, 'peso': 65.5});
  usuario.update('nome', (valor) => '$valor Martins');
  usuario.update('idade', (valor) => ++valor);
  usuario.update('peso', (valor) => 70,
      ifAbsent: () =>
          'indefinido'); // ifAbsent recebe um afunçao, caso o valor não exista podemos passar atualizar com o valor indefinido
  print(usuario);
  usuario.removeWhere((chave, valor) => chave == 'peso' && valor == 70);
  print(usuario);
  usuario.update('peso', (valor) => 70,
      ifAbsent: () =>
          'indefinido'); // ifAbsent recebe um afunçao, caso o valor não exista podemos passar atualizar com o valor indefinido
  print(usuario);
  usuario.putIfAbsent(
      'altura',
      () =>
          1.83); // caso a chave altura não exista criamos ela e passamos o valor 1.83
  usuario.addAll({'sexo': 'maculina', 'casado': true});
  print(usuario);
  print('chaves: ${usuario.keys} \n ${usuario.values}');

  /// utilizando loops
  Map<int, dynamic> numeros = {0: 'zero', 1: 'um', 2: 'dois'};
  print(numeros);
  print(numeros.map(
      (chave, valor) => MapEntry(chave, '${valor.toString().toUpperCase()}')));
  for (var chave in numeros.keys) {
    print('forIn: $chave');
  }
  for (var valor in numeros.values) {
    print('forIn: $valor');
  }
  for (var key in numeros.keys) {
    final valor = numeros[key];
    print('ForIn: chave $key valor: ${valor.toString().toUpperCase()}');
  }
}

main() {
  linkedHashMap();
}
