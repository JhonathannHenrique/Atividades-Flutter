Future<String> buscarProdutos() => Future.delayed(Duration(seconds: 2), () => 'Produtos');
Future<String> buscarCategorias() => Future.delayed(Duration(seconds: 2), () => 'Categorias');
Future<String> buscarPromocoes() => Future.delayed(Duration(seconds: 2), () => 'Promoções');
Future<String> buscarDestaques() => Future.delayed(Duration(seconds: 2), () => 'Destaques');

void main() async {
  print('--- Execução Sequencial ---');
  var s1 = DateTime.now();
  await buscarProdutos();
  await buscarCategorias();
  await buscarPromocoes();
  await buscarDestaques();
  var s2 = DateTime.now();
  print('Tempo sequencial: ${s2.difference(s1).inSeconds}s');

  print('\n--- Execução Paralela ---');
  var p1 = DateTime.now();
  await Future.wait([
    buscarProdutos(),
    buscarCategorias(),
    buscarPromocoes(),
    buscarDestaques(),
  ]);
  var p2 = DateTime.now();
  print('Tempo paralelo: ${p2.difference(p1).inSeconds}s');
}