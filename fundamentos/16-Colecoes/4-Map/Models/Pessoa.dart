class Pessoa {
  static final Map<String, Pessoa> _pessoas = Map();
  final String? nome;
  int? idade;
  double? peso;

  factory Pessoa(String? name, {int? idade, double? peso}) {
    if (_pessoas.containsKey(name)) {
      return _pessoas[name]!;
    }

    final novaPessoa = Pessoa._construtorPrivado(name, idade, peso);
    _pessoas[name!] = novaPessoa;
    return novaPessoa;
  }
  Pessoa._construtorPrivado(this.nome, this.idade, this.peso) {
    // configurações iniciais
  }

  static void mostrarDetalhe(String nome) {
    if (_pessoas.containsKey(nome)) {
      print(
          'DETALHES: nome: $nome idade: ${_pessoas[nome]!.idade} peso: ${_pessoas[nome]!.peso}');
    } else {
      print('"${nome}" nao exite no map de Pessoas');
    }
  }

  static void alterardetalhes(String nome, {int? idade, double? peso}) {
    if (_pessoas.containsKey(nome)) {
      _pessoas[nome]!.idade = idade;
      _pessoas[nome]!.peso = peso;
      print(
          'ALTERAÇÃO: nome: $nome idade: ${_pessoas[nome]!.idade} peso: ${_pessoas[nome]!.peso}');
    } else {
      print('"${nome}" nao existe no map de Pessoas');
    }
  }

  static void mostrarPessoas() {
    print('PESSOAS: $_pessoas');
    _pessoas.forEach((chave, valor) =>
        print('foreach: $chave: ${valor.idade}, ${valor.peso}'));
  }

  @override
  String toString() {
    return '$nome: $idade';
  }
}
