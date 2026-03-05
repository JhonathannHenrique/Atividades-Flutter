class Produto {
  String nome;
  double preco;
  int estoque;

  Produto(this.nome, this.preco, this.estoque);

  // Construtores Nomeados
  Produto.semEstoque(this.nome, this.preco) : estoque = 0;
  
  Produto.promocao(this.nome, double precoOriginal, this.estoque) 
      : preco = precoOriginal * 0.8; // 20% desconto

  void exibirInfo() => print('Prod: $nome | Preço: $preco | Estoque: $estoque');
}

void main() {
  var p1 = Produto.semEstoque('Cadeira', 500);
  var p2 = Produto.promocao('Mesa', 1000, 5);
  p1.exibirInfo();
  p2.exibirInfo();
}