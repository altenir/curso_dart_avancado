/*
  * Conceito
  uft8
    - Binário que representa qualquer caractere universal
  Base64
    - Codificação de dados para transferência na internet
    - https://www.base64encode.org/
*/

import 'dart:convert';

main() {
  print('4) Base64 e Uft8\n');

  String email = 'altenir30@gmail';

  // ENCODE
  var ebytes = utf8.encode(email);
  String codificado = base64.encode(ebytes);
  print(codificado);

  // DECODE
  var dbytes = base64.decode(codificado);
  String decodificado = utf8.decode(dbytes);
  print(decodificado);
}
