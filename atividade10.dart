void main() {
  var a = {1, 2, 3, 4, 5};
  var b = {4, 5, 6, 7, 8};

  print('União: ${a.union(b)}');
  print('Interseção: ${a.intersection(b)}');
  print('Diferença (A-B): ${a.difference(b)}');
  print('Existe 3 em A? ${a.contains(3)}');
}