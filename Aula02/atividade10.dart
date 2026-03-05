import 'dart:async';

void main() {
  print('Simulando eventos rápidos com Debounce de 1 segundo...');

  final controller = StreamController<String>();
  Timer? debounceTimer;

  controller.stream.listen((evento) {
    debounceTimer?.cancel();
    debounceTimer = Timer(Duration(seconds: 1), () {
      print('Processando EVENTO FINAL: $evento');
    });
  });

  Timer.periodic(Duration(milliseconds: 500), (timer) {
    String timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    print('Usuário gerou evento em: $timestamp');
    controller.sink.add(timestamp);

    if (timer.tick == 6) {
      timer.cancel();
      print('--- Usuário parou de interagir ---');
    }
  }); 
}