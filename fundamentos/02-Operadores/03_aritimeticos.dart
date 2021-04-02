main() {
  print(
      '02.2) Operadores aritiméticos ( + - * / ~/ % ), incremento ( += ++ ), e assignação ( = ?? ) \n');
  var peso = 10;
  peso = peso + 5;
  peso += 5;
  peso++; // incrementa 1
  print(peso);

  var a, b, c, d;
  a = 3;
  b = ++a; // incrementa a antes que b receba o valor
  print('a: $a b: $b');

  c = ++a / --b;
  print('a: $a b: $b');
  print(c);

  d = a ~/ b;
  print('c: $c d: $d');
}
