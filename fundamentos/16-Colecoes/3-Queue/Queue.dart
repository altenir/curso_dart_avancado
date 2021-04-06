import 'dart:collection';

///
/// * queue é uma coleção ordenada entre chaves{}, sem index, que manipula o inicio e o fim da lista
///
queue() {
  print('16.3.0) Queue\n');

  Queue<int> queue = Queue();
  print('Implementação: ${queue.runtimeType}');
  queue.addAll([20, 30]);
  queue.add(40);
  queue.addFirst(10);
  queue.addLast(50);
  queue.add(60);
  // queue.add(null); // não aceita null
  print(queue);
  queue.removeLast();
  queue.forEach((e) => print(e));
}

main() {
  queue();
}
