import 'dart:math';

class PessoaInstancia {
  static PessoaInstancia _instancia;
  String? nome;
  final int? _identidade;

  factory PessoaInstancia({String nome = 'identidade', int? identidade}) {
    identidade = (identidade == null) ? Random().nextInt(9999 + 1) : identidade;
    return _instancia =
        new PessoaInstancia._construtorNomeado(nome, identidade);
  }

  PessoaInstancia._construtorNomeado(this.nome, this._identidade) {
    // caso queira podemos fazer configurações iniciais
  }

  get identidade => _identidade;

  static get instancia {
    if (_instancia != null) {
      _instancia = PessoaInstancia._();
    }
    return _instancia;
  }
}
