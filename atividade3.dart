void main() {
  String texto = '42';
  int numeroInt = int.parse(texto);
  double numeroDouble = double.parse(texto);

  int valor = 100;
  String valorTexto = valor.toString();

  print('String para Int: $numeroInt (${numeroInt.runtimeType})');
  print('String para Double: $numeroDouble (${numeroDouble.runtimeType})');
  print('Int para String: $valorTexto (${valorTexto.runtimeType})');
}