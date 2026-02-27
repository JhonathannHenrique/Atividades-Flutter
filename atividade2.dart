double calcularArea(double largura, double altura) {
  return largura * altura;
}

double calcularAreaArrow(double l, double h) => l * h;

void main() {
  print('Tradicional: ${calcularArea(5, 10)}');
  print('Arrow: ${calcularAreaArrow(5, 10)}');
}