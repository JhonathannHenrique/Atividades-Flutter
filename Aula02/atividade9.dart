import 'dart:async';

void main() async {
  final controller = StreamController<int>.broadcast();

  controller.stream.listen((n) => print('Listener 1 (Print): $n'));

  int contador = 0;
  controller.stream.listen((n) => contador++);

  int soma = 0;
  controller.stream.listen((n) => soma += n);

  for (int i = 1; i <= 10; i++) {
    controller.sink.add(i);
  }

  await Future.delayed(Duration(milliseconds: 100)); 
  print('Total de itens: $contador');
  print('Soma total: $soma');
  
  await controller.close();
}