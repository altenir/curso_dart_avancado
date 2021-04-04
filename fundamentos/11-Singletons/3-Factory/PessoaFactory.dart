class PessoaFactory {
  static final PessoaFactory instancia =
      new PessoaFactory._construtorNomeado('indefinido');
  String? nome;

  factory PessoaFactory() => instancia;

  PessoaFactory._construtorNomeado(this.nome) {
    // configurações iniciais
  }
}
