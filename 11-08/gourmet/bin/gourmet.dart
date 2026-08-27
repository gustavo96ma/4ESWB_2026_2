import 'models/cheff.dart';
import 'models/ingrediente.dart';
import 'models/prato.dart';

void main() {
  final Cheff jorge = Cheff(nome: 'Jorge');

  final Ingrediente frango = Ingrediente(
    descricao: 'Animal galináceo',
    unidadeMedida: 'KG',
    categoria: 'Proteína',
  );

  final Ingrediente molho = Ingrediente(
    descricao:
        'Molho composto por creme de leite, ketchup, mostarda e outras paradas',
    unidadeMedida: 'mL',
    categoria: 'Molhos',
  );

  final Ingrediente batataPalha = Ingrediente(
    descricao: 'Batata finamente cortada e frita deliciosamente',
    unidadeMedida: 'g',
    categoria: 'Acompanhamentos',
  );

  final Ingrediente arrozBranco = Ingrediente(
    descricao: 'Arroz branco cozido e soltinho',
    unidadeMedida: 'g',
    categoria: 'Carboidrato',
  );

  final Prato strogonoff = Prato(
    descricao:
        'Cubos de peito de frango, ketchup, creme de leite, cogumelos, mostarda, sal, pimenta, batata palha e um arroz branco para acompanhar',
    tempoPreparo: 40,
    ingredientes: [frango, molho, batataPalha, arrozBranco],
  );

  jorge.prepararPrato(prato: strogonoff);
}
