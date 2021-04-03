///
/// Uma Closure ocorre quando uma função é declarada dentro do corpo de outra função!
///
funcaoClosures() {
  print('06.5.1) Clousures sem Retorno\n');

  var saudacao = (String nome) {
    var mensagem = (complemento) => print('Olá $nome! $complemento');
    mensagem('Seja bem vindo');
  };
  print(saudacao);
  saudacao('Fernando');

  print('06.5.1) Clousures com Retorno\n');

  Function somar(int valorA) {
    print(valorA);
    return (double valorB) {
      print(valorB);
      return valorA + valorB;
    };
  }

  var somarDez = somar(10);
  print(somarDez(5.0));

  Function porcentagem(desconto) => (valor) => desconto * valor;
  var descontarDez = porcentagem(.9);

  var descontarVinte = porcentagem(.8);
  print(descontarDez(100));
  print(descontarVinte(200));

  ///
  /// 06.5.1) Clousures com Objetos
  ///
  print('\n06.5.1) Clousures com Objetos\n');
  var novoObjeto = () {
    var id = 0;
    var objetoCriado = (String nome, descricao) {
      // return 'id: ${(++id).toString().padLeft(2, '0')} nome: $nome, descrição: $descricao'; // retorna array
      // return {'id': (++id).toString().padLeft(2, '0'), 'nome': nome, descrição': descricao}; // retorna Map
      return Objeto.fromMap({
        'id': (++id).toString().padLeft(2, '0'),
        'nome': nome,
        'descricao': descricao
      }); // retorna um Objeto
    };
    return objetoCriado;
  };

  var objeto = novoObjeto();
  print('linha 53 $objeto');

  var listaObjetos = [objeto('Fernando', 1.99)];
  listaObjetos.add(objeto('iPhone', 3000.00));
  listaObjetos.add(objeto('Fones', 100));
  listaObjetos.add(objeto('Teste', 1));

  for (var objeto in listaObjetos) {
    // print('linha 60 ${objeto.nome}');
    // print(objeto.substring(7));
    // print(objeto.map((c, v) => MapEntry(c, (v is double) ? '${descontarDez(v)}' : v)));
    print((objeto.descricao is num)
        ? descontarVinte(objeto.descricao)
        : objeto.descricao);
  }
}

class Objeto {
  String? id, nome;
  dynamic descricao;

  Objeto({this.id, this.nome, this.descricao});

  factory Objeto.fromMap(Map<String, dynamic> map) {
    return Objeto(
      id: map['id'].toString(),
      nome: map['nome'],
      descricao: map['descricao'],
    );
  }
}

void main() {
  funcaoClosures();
}
