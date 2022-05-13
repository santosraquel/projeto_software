/* 
 DATA: 20/04/2022
 TEMA DA AULA: Funções Anônimas

 Sistema: Gestão Acadêmica
  Informar:
    - Nome do aluno
    - Disciplina
    - As 3 notas da disciplinas
    - Os 3 pesos
    - Média para aprovação na diciplina
    Retornar "Relatório" contendo:
     - nome do aluno
     - nome da disciplinas
     - a média para aprovação na disciplina
     - a média artimética das notas e se o aluno foi ou não aprovado 
     - a média ponderada e se o aluno foi ou não aprovado 

  RELATÓRIO DA AULA:
  Contexto 
    A função anônima geralmente é utilizada quando temos uma função 
    que possui dados e que possui diversas ações que variam. 

  O que é?
  Como o próprio nome já diz, função anônima
  é uma função que não possui nome.

  Quando utilizar?
    Utilizamos uma função anônima quando temos um código que irá precisar ser
    executado uma única vez dentro do sistema.

  Síntaxe:
    () {
      ... instruções
    }

    Como chamar funções anônimas?
    Por se tratar de uma função que não possui nome não conseguimos chamá-la 
    diretamente, sendo assim é necessário atribui-la a uma variável e então chamar
    por meio desta variável.

*/
import 'dart:io';

void show1() {
  calcular1(1);
  calcular1(2);
}

void show2() {
  calcular2(() {
    stdout.write("Preço do Produto: ");
    double precoProduto = double.parse(stdin.readLineSync()!);
    precoProduto = precoProduto + (precoProduto * 30 / 100);
    return precoProduto;
  });
}

void calcular1(int opcao) {
  if (opcao == 1) {
    var precoTotal = calcularPrecoTotal();
    print("Preço Total: $precoTotal");
  }
  if (opcao == 2) {
    var valorDesconto = calcularDesconto();
    print("Desconto de 10%: $valorDesconto");
  }
}

void calcular2(Function acrescimo) {
  var res = acrescimo();
  print("Acréscimo de 30%: RS $res");
}

double calcularPrecoTotal() {
  stdout.write("Preço do Produto: ");
  double precoProduto = double.parse(stdin.readLineSync()!);
  stdout.write("Quantidade de produto: ");
  int quantidade = int.parse(stdin.readLineSync()!);
  double valorTotal = precoProduto * quantidade;
  return valorTotal;
}

// desconto de 10% no valor do produto
double calcularDesconto() {
  stdout.write("Preço do Produto: ");
  double precoProduto = double.parse(stdin.readLineSync()!);
  precoProduto = precoProduto - (precoProduto * (10 / 100));
  return precoProduto;
}
