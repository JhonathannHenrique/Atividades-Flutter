void main() {
  var frutas = ['Maçã', 'Banana', 'Manga', 'Uva', 'Morango', 'Abacaxi'];
  
  var comM = frutas.where((f) => f.startsWith('M')).toList();
  print('Frutas com M: $comM');

  var emMaiusculo = frutas.map((f) => f.toUpperCase()).toList();
  print('Maiúsculas: $emMaiusculo');
}