class Produto {
  String nome;
  double preco;
  int estoque;

  Produto(this.nome, this.preco, this.estoque);

  void exibirInfo() {
    print('Produto: $nome | R\$ $preco | Estoque: $estoque');
  }
}

void main() {
  Produto('Notebook', 3500, 10).exibirInfo();
  Produto('Mouse', 150, 50).exibirInfo();
  Produto('Teclado', 250, 30).exibirInfo();
}