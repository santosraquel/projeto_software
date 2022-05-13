/*
DATA: 13/04/2022
TEMA DA AULA: Funções
 
Sistema: Sistema para gestão de vendas de produtos de informática
 Criar:
 - uma função que peça o nome do produto e o retorne.
 - uma função que peça o preço do produto e o retorne.
 - uma função que peça o status do produto e o retorne.
 - uma função que insira produtos em uma lista.
 - uma função que peça liste os produtos inseridos.
 - uma função que receba por parâmetro o preço de um produto, calcule o desconto 
    de 10% e o retorne o resultado.
 - uma função que receba por parâmetro o preço de um produto, informe a quantidade 
    desse item, calcule o valor total e o retorne.
 - uma função que receba por parâmetro o preço de um produto, informe a quantidade 
    desse item, calcule o valor total, informe em quantas vezes deseja parcelar o valor
    e imprima o preço da parcela.
 - uma função que receba por parâmetro o preço de um produto, calcule o preço a prazo
    com acréscimo de 30% do valor e o imprima na tela.
 
 RELATÓRIO DA AULA:
 De forma simples podemos dizer que uma função nada mais é do que
 um pedaço de código que tem como objetivo executar uma tarfea específica
 podendo ser chamado em qualquer parte do programa quantas vezes desejarmos.
 O princípio da função é permitir o encapsulamento de uma ideia ou operação,
 dando-lhe um nome, e então chamar essa operação em diversas partes do programa
 simplesmente usando o seu nome.
 
 As funções podem ser:
 - Sem retorno e sem parâmetro
 - Sem retorno e com parâmetro
 - Com retorno e com parâmetro
 - Com retorno e sem parâmetro
 
 Síntaxe:
  
   [tipo de retorno] nome_da_funcao(1º parâmetro, 2º parâmetro ...){
     // código
   }
 
 Tipos de retorno:
   - void
   - String
   - double
   - int
   - float
 
 Síntaxe chamada da função:
 
 nome_da_função(1º parâmetro, 2º parâmetro);
 
 Benefício:
 Criar funções possibilita o reuso do código, pois não precisamos implementar
 a mesma tarefa várias vezes, basta criarmos uma função que execute essa
 tarefa e chamarmos ela pelo seu nome.
*/

import 'dart:io';

class Produto {
  int id;
  String nome;
  double preco;
  String status;

  Produto(this.id, this.nome, this.preco, this.status);
}

/* Funções sem retorno e sem parâmetro*/
void show() {
  novoProduto();

  var precoTotalProduto = precoTotal(precoProduto());
  print("Preço total do Produto: RS $precoTotalProduto");

  var precoDescontoProduto = precoDesconto(precoProduto());
  print("Preço com 10% de desconto: RS $precoDescontoProduto");

  calcularValorPrazo(precoProduto());

  dividirValor(precoProduto());
}

List<Produto> produtos = [];

void dadosProdutos() {
  print('''
        ============= LISTA PRODUTOS =============
        ID        NOME          PREÇO      STATUS
  ''');
  for (Produto p in produtos) {
    print('''
        ${p.id}         ${p.nome}       ${p.preco}      ${p.status}
    ''');
  }
  print('''
        ==========================================
  ''');
}

void novoProduto() {
  stdout.write("Quantos produtos deseja inserir?: ");
  int qtdProduto = int.parse(stdin.readLineSync()!);
  var cont = 0;
  while (cont < qtdProduto) {
    int id = cont + 1;
    String nome = nomeProduto();
    double preco = precoProduto();
    String status = statusProduto();
    produtos.add(Produto(id, nome, preco, status));
    cont++;
  }
  dadosProdutos();
}

/* Funções com retorno e sem parâmetro */
String nomeProduto() {
  stdout.write("Nome do Produto: ");
  String nomeProduto = stdin.readLineSync()!;
  return nomeProduto;
}

double precoProduto() {
  stdout.write("Preço Produto: ");
  double precoProduto = double.parse(stdin.readLineSync()!);
  return precoProduto;
}

String statusProduto() {
  stdout.write("Status Produto (true ou false): ");
  String status = stdin.readLineSync()!;
  return status;
}

/* Funções sem retorno e com parâmetro */
void calcularValorPrazo(double preco) {
  print("========== Valor à prazo (Acréscimo 30%) ==========");
  print("Preço Unitário: $preco");
  preco = preco + (preco * (30 / 100));
  print("Preço do produto à prazo: RS$preco");
}

void dividirValor(double preco) {
  print("========== Parcelar Preço Total ==========");
  print("Preço Unitário: $preco");
  stdout.write("Quantidade de Produto: ");
  int qtde = int.parse(stdin.readLineSync()!);
  preco = preco * qtde;
  print("Preço total: $preco");
  stdout.write("Em quantas vezes deseja fazer?: ");
  int qtdeParcela = int.parse(stdin.readLineSync()!);
  preco = preco / qtdeParcela;
  print("Parcelas:($qtdeParcela x) de RS$preco");
}

/* Funções com retorno e com parâmetro */
double precoTotal(double preco) {
  print("======== Calcular Preço total do Produto ========");
  print("Preço Unitário: $preco");
  stdout.write("Quantidade: ");
  int qtde = int.parse(stdin.readLineSync()!);
  preco = preco * qtde;
  return preco;
}

// desconto de 10% no valor do produto
double precoDesconto(double preco) {
  print("======== Desconto 10% ========");
  print("Preço Unitário: $preco");
  preco = preco - (preco * (10 / 100));
  return preco;
}
