class Usuario {
  String? user, senha, nome, cargo;
  int? idade;

  Usuario(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome == null) ? 'sem nome' : nome;
    this.cargo = (cargo == null) ? 'Usuário' : cargo;
    print(
        'Construtor resumido com parametros nomeados default! ${this.toString()}');
  }

  Usuario.admin(this.user, this.senha, {this.nome}) {
    this.nome = (nome == null) ? 'sem nome' : nome;
    this.cargo = 'Administrador';
    print(
        'Construtor resumido com parametros nomeados default! ${this.toString()}');
  }

  void autenticar() {
    // dados recuperados do banco de dados
    var user = 'user@gmail';
    var senha = '123456';
    (this.user == user && this.senha == senha)
        ? print('Usuário autenticado')
        : print(this.toString());
  }
}
