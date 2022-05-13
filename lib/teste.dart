import 'dart:io';

void show() {}

/* Funções com retorno e sem parâmetro */
String nomeProduto() {
  stdout.write("Nome do Produto:");
  String nomeProduto = stdin.readLineSync()!;
  return nomeProduto;
}

double precoProduto() {
  stdout.write("Preço: ");
  double precoProduto = double.parse(stdin.readLineSync()!);
  return precoProduto;
}

String statusProduto() {
  stdout.write("Status (true ou false): ");
  String status = stdin.readLineSync()!;
  return status;
}

/* Funções sem retorno e com parâmetro */
void dadosProduto(String nome, double preco, String status) {
  var listaProdutos = [];
  nome = nomeProduto();
  preco = precoProduto();
  status = statusProduto();
  listaProdutos.add(nome);
  listaProdutos.add(preco);
  listaProdutos.add(status);
}

/* Funções com retorno e com parâmetro */
double valorTotal(double preco) {
  double preco = precoProduto();
  stdout.write("Quantidade de itens: ");
  int quantidade = int.parse(stdin.readLineSync()!);
  double valorTotal = preco * quantidade;
  return valorTotal;
}

// desconto de 10% no valor do produto
double desconto(double preco) {
  double preco = precoProduto();
  preco = preco - (preco * (10 / 100));
  return preco;
}

void menu() {
  print('''
      1) Cadastrar Produto
      2) Lista de Produtos
      3) Desconto de 10% no preço do produto
      4) Sair
''');
}
