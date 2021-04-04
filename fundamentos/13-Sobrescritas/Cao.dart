import 'Mamiferos.dart';

class Cao extends Mamiferos {
  String nome;
  String raca;

  Cao.domestico(this.nome, this.raca, String sexo,
      {String idade = 'indefinida', bool docil = true})
      : super.placentarios(sexo, idade, docil: docil);

  Cao.selvagem(this.nome, this.raca, sexo,
      {idade = 'indefinida', bool docil = true})
      : super.placentarios(sexo, idade, docil: docil);

  @override // sobrescreve o método da classe herdade (super)
  void dormir() {
    print('Dorme como um cão!');
  }

  // @override
  void alimentar() {
    super.alimentar(); // implementa o escopo do metodo herdade
    print('cao');
  }

  @override // métodos sem escopo em classes abstratas devem ser sobrescritos
  void reproduzir() {
    print('Reproduz como um cão!');
  }

  void acao() {
    print('late como um cão!');
  }

  // toda classe extends do Object, ao usar a função toString retorna (Instace of 'Object)
  String toString() {
    return "Instance of '${this.runtimeType}' nome: $nome raca: $raca sexo: $sexo";
  }
}
