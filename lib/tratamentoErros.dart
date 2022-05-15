/* 
1) Implemente o try-catch (com relevância) nas funções do seu projeto – pelo menos 5 funções. 
Faça o tratamento de erro específico e geral.

2) Analise o seu projeto e crie exceções específicas que facilite a localização e a
manutenção do projeto.

3) O que é e para que serve o Either? Qual a relação e qual a diferença com o try-cath? 
Faça um exemplo no contexto do seu projeto.
*/

import 'dart:io';

void show() {
  // validarPrecoProduto("sdsad#");
  // calcularPrecoTotalProduto("50.00", "2");
  // calcularDescontoPrecoTotalProduto("asdasd", "2", "10");
  // depositarSalarioFuncionario("-20.00");
  confirmarSenha("teste");
}

double validarPrecoProduto(String preco) {
  double valor = 0.0;
  try {
    valor = double.parse(preco);
    if (valor > 0) {
      print("Preço do Produto: RS $valor");
    }
    if (valor < 0) {
      throw Exception('Erro!!! Preço não pode ser negativo!');
    }
  } on FormatException catch (e) {
    print('Erro!!! Tipo de dado inválido, informe somente números!');
  }
  return valor;
}

double calcularPrecoTotalProduto(String preco, String qtde) {
  double precoTotalProduto = 0.0;
  double precoProduto;
  int qtdeProduto;
  try {
    precoProduto = double.parse(preco);
    qtdeProduto = int.parse(qtde);
    if (precoProduto > 0 && qtdeProduto > 0) {
      precoTotalProduto = precoProduto * qtdeProduto;
      print("Preço total do produto: RS $precoTotalProduto");
    }
    if (precoProduto < 0 || qtdeProduto < 0) {
      throw Exception(
          'Erro!!! Preço e/ou quantidade não pode ser um número negativo!');
    }
  } on FormatException catch (e) {
    print(
        'Erro!!! Tipo de dado inválido, preço e/ou quantidade deve ser um número!');
  }
  return precoTotalProduto;
}

double calcularDescontoPrecoTotalProduto(
    String preco, String qtde, String desconto) {
  double precoTotalProduto = 0.0;
  double precoProduto;
  int qtdeProduto;
  int descontoProduto;
  try {
    precoProduto = double.parse(preco);
    qtdeProduto = int.parse(qtde);
    descontoProduto = int.parse(desconto);
    if (precoProduto > 0 && qtdeProduto > 0 && descontoProduto > 0) {
      precoTotalProduto = precoProduto * qtdeProduto;
      precoTotalProduto =
          precoTotalProduto - (precoTotalProduto * (descontoProduto / 100));
      print(
          "Preço total com desconto de ($descontoProduto)%: RS $precoTotalProduto");
    }
    if (precoProduto < 0 || qtdeProduto < 0 || descontoProduto < 0) {
      throw Exception(
          'Erro!!! Preço e/ou quantidade e/ou desconto não pode ser um número negativo!');
    }
  } on FormatException catch (e) {
    print(
        'Erro!!! Tipo de dado inválido, Preço e/ou quantidade e/ou desconto deve ser um número!');
  }
  return precoTotalProduto;
}

double depositarSalarioFuncionario(String valor) {
  double saldo = 0.0;
  double valorProduto;
  try {
    valorProduto = double.parse(valor);
    if (valorProduto >= 0) {
      saldo += valorProduto;
      print("Saldo: $saldo");
    }
    if (valorProduto < 0.0) {
      throw Exception("Não é permitido valores negativos!");
    }
  } on FormatException catch (e) {
    print("Erro!!! Tipo de dado inválido, digite somente números!");
  }
  return saldo;
}

void confirmarSenha(String senha) {
  try {
    stdout.write("Confirme a senha: ");
    int confirmarSenha = int.parse(stdin.readLineSync()!);
    if (confirmarSenha == senha) {
      print("Senha alterada com sucesso!");
    }
  } on FormatException catch (e) {
    print("Erro!!! As senhas se diferem");
  }
}
