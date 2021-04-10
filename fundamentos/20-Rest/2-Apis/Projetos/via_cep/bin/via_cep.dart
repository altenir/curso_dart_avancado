import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  /*
  {
    "cep": "01001-000",
    "logradouro": "Praça da Sé",
    "complemento": "lado ímpar",
    "bairro": "Sé",
    "localidade": "São Paulo",
    "uf": "SP",
    "ibge": "3550308",
    "gia": "1004",
    "ddd": "11",
    "siafi": "7107"
  }
  */

  try {
    var url = Uri.parse('https://viacep.com.br/ws/67140000/json/');
    var response = await http.get(url);
    // print('STATUS status: ${response.statusCode}');
    // print('BODY: ${response.body}');

    // DECODE
    if (response.statusCode == 200) {
      Map<String, dynamic> parsedJson = jsonDecode(response.body);
      var cep = Cep.fromJson(parsedJson);
      print('parsedJson: $parsedJson');
      print('logradouro: ${cep.logradouro}');

      // ENCODE - fazer o encode, caminho reverso
      Map<String, dynamic> map = cep.toJson();
      String toJson = jsonEncode(map);
      print('toJson: $toJson');
    } else {
      throw Exception(
          'Erro ao obter o CEP: \nSTATUSCODE: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

class Cep {
  String cep;
  String logradouro;
  String complemento;
  String bairro;
  String localidade;
  String uf;
  String ibge;
  String gia;
  String ddd;
  String siafi;

  Cep(
      {this.cep,
      this.logradouro,
      this.complemento,
      this.bairro,
      this.localidade,
      this.uf,
      this.ibge,
      this.gia,
      this.ddd,
      this.siafi});

  Cep.fromJson(Map<String, dynamic> json) {
    cep = json['cep'];
    logradouro = json['logradouro'];
    complemento = json['complemento'];
    bairro = json['bairro'];
    localidade = json['localidade'];
    uf = json['uf'];
    ibge = json['ibge'];
    gia = json['gia'];
    ddd = json['ddd'];
    siafi = json['siafi'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['cep'] = cep;
    data['logradouro'] = logradouro;
    data['complemento'] = complemento;
    data['bairro'] = bairro;
    data['localidade'] = localidade;
    data['uf'] = uf;
    data['ibge'] = ibge;
    data['gia'] = gia;
    data['ddd'] = ddd;
    data['siafi'] = siafi;
    return data;
  }
}
