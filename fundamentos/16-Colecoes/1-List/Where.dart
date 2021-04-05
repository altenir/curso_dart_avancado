/*
  * Conceito:
  - List é uma coleção dinamica e ordenada de elementos entre colchetes []
  - forEach: Aplica a função anonima a cada elemento da nossa coleção
  - Todo array é um List<?>
*/

///
/// * Every
/// - Faz o teste em todos elementos com o operador ógico '&&' retornando (true ou false)
///
listEvery() {
  print('\n16.1.3) List Every\n');

  List<int> inteiros = [0, 1, 2, 3, 4, 5];
  bool resultado =
      inteiros.every((e) => e >= 0); // verifica se todos os elementossão >= 0
  print(resultado);

  List<String> textos = List.from(['Fernando', 'Leila', 'Chloe']);
  resultado = textos.every((e) =>
      e.contains('e')); // verifica se todos os elementos possuem a vogal e
  print(resultado);
  resultado = textos.every(
      (e) => e.contains('ern')); // verifica se todos os elementos possuem ern
  print(resultado);
}

main() {
  listEvery();
}
