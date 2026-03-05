Future<String> buscarUsuario() {
  return Future.delayed(Duration(seconds: 2), () => 'Maria Silva');
}

void main() {
  print('Iniciando busca...');
  buscarUsuario().then((nome) {
    print('Usuário encontrado: $nome');
  });
}