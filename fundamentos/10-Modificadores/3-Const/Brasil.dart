// Objeto imutavel
// - O construtor deve ser constante
// - As variaveis devem ser final ou static const
class Brasil {
  final double latitude;
  final double longitude;
  static const String capital = 'Brasilia';
  static const estados = ['SP', 'RJ', 'MG', '...'];

  const Brasil(this.latitude, this.longitude);
}
