import 'dart:async';

Future<bool> autenticar() async {
  await Future.delayed(Duration(seconds: 1));
  return true;
}

Future<Map<String, dynamic>> carregarDados() async {
  final resultados = await Future.wait([
    Future.delayed(Duration(seconds: 2), () => 'Saldo: R\$ 500,00'),
    Future.delayed(Duration(seconds: 2), () => 'Última transação: Mercado'),
  ]);
  return {'financeiro': resultados[0], 'historico': resultados[1]};
}

Stream<String> streamNotificacoes() async* {
  for (var i = 1; i <= 3; i++) {
    await Future.delayed(Duration(seconds: 3));
    yield 'Nova notificação #$i';
  }
}

void main() async {
  print('--- Iniciando Dashboard ---');
  
  try {
    bool logado = await autenticar();
    if (!logado) throw Exception('Falha na autenticação');
    print('Status: Autenticado');

    print('Carregando dados...');
    final dados = await carregarDados();
    print('Dados Carregados: $dados');

    print('Escutando atualizações em tempo real...');
    streamNotificacoes().listen((msg) => print('[NOTIFICAÇÃO]: $msg'));

  } catch (e) {
    print('Erro Crítico no Dashboard: $e');
  }
}