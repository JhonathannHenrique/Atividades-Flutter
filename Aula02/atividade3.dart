Future<String> autenticar() async {
  await Future.delayed(Duration(seconds: 1));
  return 'token_logado_123';
}

Future<Map<String, dynamic>> buscarPerfil(String token) async {
  await Future.delayed(Duration(seconds: 1));
  return {'id': 101, 'nome': 'Maria Silva'};
}

Future<List<String>> buscarPedidos(int userId) async {
  await Future.delayed(Duration(seconds: 1));
  return ['Pedido #01', 'Pedido #02', 'Pedido #03'];
}

void main() async {
  print('Iniciando fluxo de login...');
  
  final token = await autenticar();
  print('Autenticado. Token: $token');
  
  final perfil = await buscarPerfil(token);
  print('Perfil carregado: ${perfil['nome']}');
  
  final pedidos = await buscarPedidos(perfil['id']);
  print('Lista de pedidos: $pedidos');
}