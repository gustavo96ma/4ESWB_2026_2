import 'prato.dart';
import 'ingrediente.dart';

class Cheff {
  Cheff({required this.nome});

  final String nome;

  void prepararPrato({required Prato prato}) {
    final List<Ingrediente> ingredientes = prato.ingredientes;
    bool temEstoque = true;

    for (var ingrediente in ingredientes) {
      if (ingrediente.estoqueDisponivel == 0) {
        temEstoque = false;
      }
    }

    if (temEstoque) {
      print('Preparando o PRATO!!');
      for (var ingrediente in ingredientes) {
        ingrediente.decrementaEstoque();
        print('Adicionando ${ingrediente.descricao}   ...');
      }
    }
  }
}
