import 'dart:math';

Future<String> buscarUsuario() async {
  await Future.delayed(Duration(seconds: 2));
  
  if (Random().nextBool()) {
    throw Exception('Falha na conexão com o servidor!');
  }
  
  return 'Maria Silva';
}

void main() async {
  print('Buscando usuário...');
  try {
    String nome = await buscarUsuario();
    print('Sucesso! Usuário: $nome');
  } catch (e) {
    print('Erro capturado: $e');
  } finally {
    print('Operação finalizada.');
  }
}