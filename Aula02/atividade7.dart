import 'dart:async';

void main() async {
  final chatController = StreamController<String>();

  chatController.stream.listen((mensagem) {
    print('[CHAT]: $mensagem');
  });

  print('Iniciando conversa...');
  for (var i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    chatController.sink.add('Olá, esta é a mensagem $i');
  }

  await chatController.close();
  print('Conexão encerrada.');
}