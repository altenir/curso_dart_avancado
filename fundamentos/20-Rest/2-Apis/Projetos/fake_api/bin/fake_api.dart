/*
  Dependencia HTTP: https://pub.dev/packages/htpp
  Fake API: https://jsonplaceholder.typicode.com
*/

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fake_api/models/Users.dart';
import 'package:fake_api/models/Posts.dart';

void jsonGet() async {
  print('20.2.1) Get\n');

  var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
  try {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print('STATUS status: ${response.statusCode}');
      // print('BODY: ${response.body}');

      // DECODE
      List<dynamic> parsedjson = jsonDecode(response.body);
      print('parsedjson: $parsedjson\n');
      var obj = Users.fromJson(parsedjson);

      // USO OBJETO
      print(
          'USO OBJETO: ${obj.users.map((e) => e.address.geo.lat).toList()}\n');

      // ENCODE
      // List<dynamic> map = obj.toJson();
      // String toJson = jsonEncode(map);
      var map = obj.toJson();
      var toJson = jsonEncode(map);
      print('toJson: $toJson');
    } else {
      throw Exception('Erro ao obter os dados; ${response.statusCode}');
    }
  } catch (e) {
    print('Excecao: $e');
  }
}

void jsonPost() async {
  print('20.2.2) Posts\n');

  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  // DECODE
  // Map<String, dynamic> parsedJson = {
  var parsedJson = <String, dynamic>{
    'title': 'Postagem de Altenir',
    'body': 'Funcionou!',
    'userId': 1,
  };
  var obj = Posts.fromJson(parsedJson);

  // USO DO OBJETO
  print('USO DO OBJETO: ${obj.title}');

  // ENCODE
  var toJson = jsonEncode(obj);
  try {
    var response = await http.post(url, body: toJson, headers: {
      'Content-type': 'application/json; charset=UTF-8',
    });
    if (response.statusCode == 201) {
      print('\nSTATUSCODE: ${response.statusCode}\n');
      print('BODY: ${response.body}\n');
    } else {
      throw Exception(
          'Erro ao efetuar POST: \n STATUSCODE: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

void jsonPut() async {
  print('20.2.3) Put\n');

  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

  // DECODE
  // Map<String, dynamic> parsedJson = {
  var parsedJson = <String, dynamic>{
    'id': 10, // nao deixou atualizar o id por ser automatico, normal
    'title': 'Postagem de Altenir',
    'body': 'Funcionou!',
    'userId': 100,
  };
  var obj = Posts.fromJson(parsedJson);

  // USO DO OBJETO
  print('USO DO OBJETO: ${obj.title}');

  // ENCODE
  var toJson = jsonEncode(obj);
  try {
    var response = await http.put(url, body: toJson, headers: {
      'Content-type': 'application/json; charset=UTF-8',
    });
    if (response.statusCode == 200) {
      print('\nSTATUSCODE: ${response.statusCode}\n');
      print('BODY: ${response.body}\n');
    } else {
      throw Exception(
          'Erro ao efetuar PUT: \n STATUSCODE: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

void jsonPatch() async {
  print('20.2.4) Put\n');

  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

  // DECODE
  // Map<String, dynamic> parsedJson = {
  var parsedJson = <String, dynamic>{
    'id': 10,
    'title': 'Postagem de XX Altenir',
    'userId': 100,
  };
  var obj = Posts.fromJson(parsedJson);

  // USO DO OBJETO
  print('USO DO OBJETO: ${obj.title}');

  // ENCODE
  var toJson = jsonEncode(obj);
  try {
    var response = await http.patch(url, body: toJson, headers: {
      'Content-type': 'application/json; charset=UTF-8',
    });
    if (response.statusCode == 200) {
      print('\nSTATUSCODE: ${response.statusCode}\n');
      print('BODY: ${response.body}\n');
    } else {
      throw Exception(
          'Erro ao efetuar PATCH: \n STATUSCODE: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

void jsonDelete() async {
  print('20.2.5) Patch\n');

  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

  try {
    var response = await http.delete(
      url,
    );
    if (response.statusCode == 200) {
      print('\nSTATUSCODE: ${response.statusCode}\n');
      print('BODY: ${response.body}\n');
    } else {
      throw Exception(
          'Erro ao efetuar PATCH: \n STATUSCODE: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

void main() {
  // jsonGet();
  // jsonPost();
  // jsonPut();
  // jsonPatch();
  jsonDelete();
}
