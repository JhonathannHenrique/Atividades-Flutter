import 'dart:async';

Future<String> buscarDadosLentos() {
  return Future.delayed(Duration(seconds: 5), () => 'Dados da API');
}

void main() async {
  print('Iniciando requisição lenta (5s) com timeout de 3s...');
  
  try {
    final resultado = await buscarDadosLentos().timeout(Duration(seconds: 3));
    print('Resultado: $resultado');
  } on TimeoutException {
    print('Erro: A operação demorou muito e foi cancelada!');
  } catch (e) {
    print('Outro erro: $e');
  }
}