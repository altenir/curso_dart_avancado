import 'dart:collection';

///
/// * Set é uma coleção de elementos unicos ordenaos entre chaves {}. Não tem acesso a indice!
///

linkedHasSet() {
  print('16.2.1) LinkedHashSet == Set \n');

  Set<int> setInt = Set();
  print('Implementacao ${setInt.runtimeType}'); // _CompactLinkedHashSet<int>

  setInt.add(13);
  setInt.add(13);
  // setInt.add(null); // não aceita valores null
  setInt.add(17);
  setInt.add(17);
  setInt.remove(13);
  print(setInt); // representada por chaves
  // com o for i podemos manupilar a lista
  for (var i = 0; i < setInt.length; i++) {
    // print(setInt[i]); // não temos acesso ao indice mas pode usar a função elementAt
    print('for: ${setInt.elementAt(i)}');
  }
  // com o for in apenas percorremos a lista
  for (var elemento in setInt) {
    print('for in: ${elemento}');
  }

  setInt.forEach((element) => print('forEach: $element'));

  Set<int> listaA = {0, 1, 2, 3, 4};
  Set<int> listaB = {3, 4, 5, 6, 7};
  print(listaA.difference(listaB)); // diferença da listaA para listaB
  print(listaA.union(
      listaB)); // aqui temos todos os elementos e os elementos repetidos não foram adicionados por ser uma lista do tipo Set
  print(listaA.intersection(listaB)); // elemento em comum
  print(listaA.lookup(0));
}

hashSet() {
  ///
  /// * HashSet é uma coleção de elementos unicos e desordenados
  ///
  print('\n16.2.2) HashSet\n');
  HashSet<String> hashSet1 = HashSet(); // import 'dart:collection';
  HashSet<int> hashSet2 = HashSet();
  HashSet<int> hashSet3 = HashSet();
  print('Implementação: ${hashSet1.runtimeType}'); // _HashSet<String>
  hashSet1.add('A');
  hashSet1.add('B');
  hashSet1.add('C');
  hashSet1.add('D');
  // hashSet1.add(null); // não aceita null
  hashSet2.add(1); // apenas int com 1 decimal fica ordenada
  hashSet2.add(2);
  hashSet2.add(3);
  hashSet3.add(11);
  hashSet3.add(22);
  hashSet3.add(33);
  print('$hashSet1\n$hashSet2\n$hashSet3');
  for (var i = 0; i < hashSet1.length; i++) {
    // print('${hashSet1[i]}') // não temos acesso ao indice mas pode usar a função elementAt
    print('for hashSet1: ${hashSet1.elementAt(i)}');
  }
  for (var elemento in hashSet2) {
    print('for in hashSet2: $elemento');
  }
  hashSet3.forEach((element) => print('forEach hashSet3: $element'));
}

splayTreeSet() {
  ///
  /// * SplayTreeSet organiza automaticamente os elementos em ordem crescente
  /// * Por ser uma arvore de comparações não pode conter elementos null
  ///
  print('\n16.2.3) SplayTreeSet\n');

  SplayTreeSet<String> splayTreeSet = SplayTreeSet();
  print('implementação: ${splayTreeSet.runtimeType}'); // SplayTreeSet<String>
  splayTreeSet.add('info1');
  splayTreeSet.add('info3');
  splayTreeSet.add('info');
  splayTreeSet.add('info2');
  // splayTreeSet.add(null); // não aceita null
  print(splayTreeSet);
  for (var i = 0; i < splayTreeSet.length; i++) {
    // print(splayTreeSet[i]);// não temos acesso ao indice mas pode usar a função elementAt
    print('for: ${splayTreeSet.elementAt(i)}');
  }
  for (var elemento in splayTreeSet) {
    print('for in: $elemento');
  }
  splayTreeSet.forEach((element) => print('forEach: $element'));
}

main() {
  linkedHasSet();
  hashSet();
  splayTreeSet();
}
