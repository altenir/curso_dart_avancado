import 'Conta.dart';
import 'Usuario.dart';

///
/// Encapsuladores são usados para proteger os atributos e variaveis
/// Get é usado para acessar o Set é usado para alterar
/// Atributos ou variaveis com underline são privados Ex.: _saldo
///
void main() {
  print('09.0) Encapsuladores\n');

  var usuario = Usuario('Fernando', 'abc123');
  // se passar parametro o dar identifica como set
  usuario
    ..senha = '12346789' // primeira tentativa de ateração
    ..alteracao = true // marcamos como alteração
    ..senha =
        '12346789'; // agora ele altera a senha devido ter mudado para true na alteração

// se não passar o dart identifica como um get
  print('Nome: ${usuario.nome} senha: ${usuario.senha}\n');

  var conta = Conta('Leila Martins');
  conta
    ..deposito = 900
    ..deposito = 450
    ..saque = 550
    ..saque = 500;

  print('');
  conta
    ..limite = 700
    ..alterarLimite = true
    ..limite = 1000
    ..alterarLimite = false;

  print('');
  conta
    ..saque = 950
    ..saque = 850;
  print('${conta.informacao}\n');

  Conta contaVip = Conta.vip('Fernando Martins', limite: 12500);
  contaVip
    ..deposito = 15000
    ..saque = 15000
    ..limite = 15000
    ..saque = 15000;
  print('${contaVip.informacao}\n');
}

// nao esta sendo usada, foi apenas para mostrar como fazer getter e setter automaticamente
// só colocando o mouse em sima do atributo e clicando em
class teste {
  String? _nome;

  String get nome => _nome!;

  set nome(String nome) {
    _nome = nome;
  }
}
