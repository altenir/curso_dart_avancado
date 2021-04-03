class Usuario {
  String? usuario;
  String? senha;

  void autenticar() {
    // dados recuperados do banco de dados
    var usuario = 'fma@gmail';
    var senha = '123456';

    if (this.usuario == usuario && this.senha == senha) {
      print('Usuário autenticado!\n');
    } else {
      print('Usuário não autenticado!\n');
    }
  }
}
