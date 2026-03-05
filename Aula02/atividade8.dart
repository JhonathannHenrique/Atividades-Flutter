Stream<int> numerosStream() {
  return Stream.fromIterable(List.generate(20, (i) => i + 1));
}

void main() {
  numerosStream()
      .where((n) => n % 2 == 0) 
      .map((n) => n * 2)        
      .take(5)                  
      .listen((n) => print('Resultado transformado: $n'));
}