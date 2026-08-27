class Ingrediente {
  Ingrediente({
    required this.descricao,
    required this.unidadeMedida,
    required this.categoria,
  });

  final String descricao;
  final String unidadeMedida;
  final String categoria;

  int estoqueDisponivel = 10;

  int decrementaEstoque() {
    estoqueDisponivel--;
    return estoqueDisponivel;
  }
}
