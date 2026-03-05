class Produto {
  String nome;
  double preco;
  bool importado;
  int quantidadeEstoque;

  Produto(this.nome, this.preco, this.importado, this.quantidadeEstoque);

  void dossie() {
    print('--- Informações do Produto ---');
    print('Nome: $nome');
    print('Preço: R\$ $preco');
    print('Importado: ${importado ? "Sim" : "Não"}');
    print('Estoque: $quantidadeEstoque unidades');
  }
}

void main() {
  var p1 = Produto('Teclado', 150.0, true, 10);
  p1.dossie();
}