import 'dart:math';

class Pessoa {
  String nome, sobrenome;
  int? _identidade;
  Pessoa(this.nome, this.sobrenome, {identidade}) {
    this._identidade =
        (identidade == false) ? Random().nextInt(9999999) : identidade;
  }
  get identidade => _identidade;
}
