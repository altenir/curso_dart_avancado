import '../1-Static/Calculos.dart';

/**
 * Static
 * A varivel estatica fica disponível somente na própria classe em vez de suas instancias/objetos
 * Em métodos estaticos devemos usar variáveis estáticas da classe
 * Variaveis estaticas podem ser acessadas sem precisar instanciar classes/objetos
 */

void main() {
  print('10.0) Modificadores Static\n');

  double raio = 5;
  var calculos1 = new Calculos();
  print(calculos1.pi);
  print(calculos1.areaCirculo(raio));
  // acessando o atributo estático diretamente
// para não precisar a tofo momento ficar instanciado a classe
  print(Calculos.piEstatico);

  print('');

  Calculos calculos2 = Calculos();
  print(calculos2.pi);
  print(calculos2.areaCirculo(raio));
  print(
      '\nRetornos iguai: ${Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'SIM' : 'NAO'} Métodos diferentes!\n');

  print(
      '\nInstancias consomem ${identical(calculos1, calculos2) ? 'SIM' : 'MAIS'} memória!\n');

  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (raio * raio));
}
