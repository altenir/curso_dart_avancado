import 'dart:math';

class Conta {
  bool alterarLimite = false;

  int? _numeroConta;
  String? _nome;
  double? _saldo = 0;
  double? _limite = 500;

  Conta(String nome) {
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print(
        'Conta número: "${_numeroConta}" Títular: "${_nome}" Criada com sucesso!');
  }

  Conta.vip(String nome, {double limite = 10000}) {
    this.alterarLimite = true;
    this._limite = limite;
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print(
        'Conta número: "${_numeroConta}" Titular: "${_nome}" Criada com sucesso!');
  }

  // getter padrao
  int get numeroConta {
    return this._numeroConta!;
  }

  /*double*/ get saldo => this._saldo;

  set limite(double limite) {
    if (alterarLimite) {
      this._limite = limite;
      print('Limite alterado para o valor; $_limite');
    } else {
      print('Permissão negada! Alteração: Limte do titular');
    }
  }

  // getter e setter costumizaveis
  String get informacao =>
      'Titular: ${_nome} NºConta: ${_numeroConta} Saldo: ${_saldo}';

  set deposito(double? deposito) {
    if (deposito! > 0) {
      // var sldo = this.saldo;
      this._saldo = this.saldo + deposito;
      print('Deposito valor: $deposito Saldo atualizaod: $_saldo');
    }
  }

  set saque(double? saque) {
    if (saque! > 0 && saque <= _limite!) {
      if (saque <= this.saldo) {
        this._saldo = this.saldo - saque;
        print('Saque valor: $saque Saldo Atualizado: $_saldo');
      } else {
        print('Saldo valor: $_saldo insuficiente para saque de $saque');
      }
    } else {
      print('Limite para saque: $_limite');
    }
  }
}
