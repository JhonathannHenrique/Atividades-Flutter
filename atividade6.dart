double executarOperacao(double a, double b, Function operacao) {
  return operacao(a, b);
}

void main() {
  double soma(double x, double y) => x + y;
  double multi(double x, double y) => x * y;

  print('Soma: ${executarOperacao(10, 5, soma)}');
  print('Multiplicação: ${executarOperacao(10, 5, multi)}');
}