void main() {
  Map<int, String> produtos = {1: 'Teclado', 2: 'Mouse', 3: 'Monitor', 4: 'Fone', 5: 'Webcam'};

  String buscar(int id) => produtos[id] ?? 'Não encontrado';
  
  print('Produto 3: ${buscar(3)}');
  produtos.remove(2); // Remove mouse
  
  produtos.forEach((id, nome) => print('ID: $id | Nome: $nome'));
}