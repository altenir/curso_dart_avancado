///
/// Funcçoes Arrow tem o retorno implicito!
///

funcaoArraow() {
  print('06.2) Funções Arrow\n');

  String conceito() => 'Funcção Arrow com retorno implicito';

  String somarValores(int valorA, int valorB) =>
      'Soma: $valorA + $valorB = ${valorA + valorB}';

  String verificaMaiorIdade(String nome, int idade) =>
      (idade >= 18) ? '$nome é maior de idade' : '$nome não é mior de idade';

  String calcularAreaCirculo(double raio) =>
      'Área do círculo:  ${3.14 * raio * raio}';

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;

  calcularSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print('Empregado: $nome tem saldo de Salário: $total');
  }

  print(conceito());
  print(somarValores(2, 3));
  print(verificaMaiorIdade('Fernando', 38));
  print(calcularAreaCirculo(2));
  calcularSalario('Fernando', 900, 100, 1);
}

void main() {
  funcaoArraow();
}
