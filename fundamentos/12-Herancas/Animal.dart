/*
  * Regras
  - Uma classe pode ter somente uma herança

  * Construtores
  - Devem obter a ordem dos parametros
  - Parametros default devem ser nomeados ou posicionados
  - Tratamento e tipagem de parametros deve ser feito na classe herdeira
*/

// as classes Animal e mamifero são modelos, não devemos tratar parametros defaul nelas e sim na classe Cao
class Animal {
  String? idade;
  bool docil;

  Animal(this.idade, {required this.docil});
  // docil ??= false; // fazzer tratamento na classe herdeira

  void dormir() {
    print('Dorme como um animal');
  }
}
