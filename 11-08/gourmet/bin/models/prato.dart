import 'ingrediente.dart';

class Prato {
  Prato({
    required this.descricao,
    required this.ingredientes,
    required this.tempoPreparo,
  });

  final String descricao;
  final List<Ingrediente> ingredientes;

  /// tempo de preparo em minutos
  final int tempoPreparo;
}
