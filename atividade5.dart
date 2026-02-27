void saudar({required String nome, String titulo = 'Sr.', bool mostrarHora = false}) {
  String saudacao = 'Olá, $titulo $nome';
  if (mostrarHora) {
    saudacao += ' | Hora atual: ${DateTime.now()}';
  }
  print(saudacao);
}

void main() {
  saudar(nome: 'Jhonathan', mostrarHora: true);
  saudar(nome: 'Silva', titulo: 'Dr.');
}