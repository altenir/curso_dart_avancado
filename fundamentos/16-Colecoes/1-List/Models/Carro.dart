import 'Caracteristica.dart';
import 'Multa.dart';

class Carro {
  String marca, modelo, placa;
  Caracteristica caracteristicas;
  List<Multa> multas = [];

  Carro(this.marca, this.modelo, this.placa, this.caracteristicas,
      {List<Multa>? multas}) {
    this.multas = multas!;
  }
}
