Map<String, String> cache = {'versao': '1.0.2'};

Future<String> buscarDaAPI(String chave) async {
  await Future.delayed(Duration(seconds: 1));
  return 'Valor_da_API_para_$chave';
}

Future<String?> buscarConfiguracao(String chave) async {
  return cache[chave] ?? await buscarDaAPI(chave);
}

void main() async {
  String? v1 = await buscarConfiguracao('versao');
  print('Configuração 1: ${v1?.toUpperCase()}');

  String? v2 = await buscarConfiguracao('tema');
  print('Configuração 2: ${v2!.substring(0, 5)}');
}