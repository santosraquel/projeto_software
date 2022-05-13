/* 
DATA: 27/04/2022
Tema: Parâmetros nomeados e anônimos
PARÂMETROS NOMEADOS:
  Sintaxe:
  int main (){
    // chamada Função
    nome_função(2º arg: valor, 5º arg: valor, 2º arg: valor, ....);
    return 0;
  }
  tipo_retorno nome_função({1º arg, 2º arg, ...}){
    // intruções
  }
  PARÂMETROS OPCIONAIS:
    int main (){
    // chamada função com parâmetros nomeados
    nome_função(1º arg);
    return 0;
  }
  tipo_retorno nome_função(1º arg, [2º arg], ...}){
    // intruções
  }
  Os parâmetros nomeados são uteis quando queremos passar os parâmetros para uma
  determinada função sem necessariamente respeitar uma ordem.
  Por padrão os parâmetros nomeados são OPCIONAIS, assim é necessário definir o valor padrão
  Para tornar parâmetros nomeados obrigatórios utilizamos a palavra chave "required".
  O objetivo dos parâmetros nomeados é tornar a leitura mais claro 
  Com parâmetros nomeados, na chamada da função, podemos definir a ordem aleatória dos parâmetros.
  Vale destacar que é possível criarmos uma função com parâmetros nomeados e anônimos
*/

import 'dart:io';

void show() {
  // precoOpcional("Mouse", 'false');
  // statusProdutoOpcional("Teclado", 150.00);
  // nomeadosObrigatorios("Pendrive", preco: 60.00, opcao: 2);
  // nomeadoOpcional("Fone JBL", 180.00);
  // nomeadoObrigatorioOpcional("Caixa de Som", preco: 200.00);
  nomeadoPosicional(produto: "Mouse", preco: 20.00, opcao: 2);
}

void calcularPrecoTotal(double preco) {
  stdout.write("Quantidade de produto: ");
  int quantidade = int.parse(stdin.readLineSync()!);
  double valorTotal = preco * quantidade;
  print("Preço total: RS$valorTotal");
}

void calcularDesconto(double preco) {
  double valorTotal = preco - (preco * (10 / 100));
  print("Desconto de 10%: RS$valorTotal");
}

// Duas funções com parâmetros opcionais (valor padrão)
void precoOpcional(String produto, String status, [double preco = 0.0]) {
  print("Produto: $produto");
  print("Preço: RS$preco");
  print("Status: $status");
}

void statusProdutoOpcional(String produto, double preco, [status = true]) {
  print("Produto: $produto");
  print("Preço: RS$preco");
  print("Status: $status");
}

// Uma função com parâmetros nomeados obrigatórios;
void nomeadosObrigatorios(String produto,
    {required double preco, required int opcao}) {
  print("Produto: $produto");
  print("Preço: RS$preco");
  if (opcao == 1) {
    calcularPrecoTotal(preco);
  }
  if (opcao == 2) {
    calcularDesconto(preco);
  }
}

// Uma função com parâmetros nomeados opcionais;
void nomeadoOpcional(String produto, double preco, {status = false}) {
  print("Produto: $produto");
  print("Preço: RS$preco");
  print("Status: $status");
}

// Uma função com parâmetros nomeados obrigatórios e opcionais;
void nomeadoObrigatorioOpcional(String produto,
    {required double preco, status = false}) {
  print("Produto: $produto");
  print("Preço: RS$preco");
  print("Status: $status");
}

// Uma única função com parâmetros nomeados e posicionais;
void nomeadoPosicional(
    {required String produto, required double preco, required int opcao}) {
  print("Produto: $produto");
  print("Preço: RS$preco");
  if (opcao == 1) {
    calcularPrecoTotal(preco);
  }
  if (opcao == 2) {
    calcularDesconto(preco);
  }
}
