/*
DATA: 13/04/2022
TEMA DA AULA: Funções
 
Sistema: Gestão Acadêmica
 Criar:
 - uma função que peça o nome do aluno e o retorne
 - uma função que peça o nome do curso e o retorne
 - uma função que peça o preço da mensalidade do curso e o retorne
 - uma função que peça o tempo de duração do curso e o retorne
 - uma função que calcule o preço total do curso e o retorne
 - uma função que calcule o desconto de 50% da mensalidade do curso e o retorne
 - uma função que calcule o desconto de 75% no preço total do curso e o retorne
 - uma função que aprensente todos os dadoas na tela
 
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

// Funções sem retorno e sem parâmetro
void show() {
  imprimirDados();
}

void imprimirDados() {
  String nome = nomeAluno();
  String curso = nomeCurso();
  double precoMensal = mensalidade();
  int duracao = duracaoCurso();
  double precoCurso = precoTotalCurso(precoMensal, duracao);
  double precoMensalidade = descontoMensalidade(precoMensal);
  double desconto = descontoCurso(precoMensal, duracao);

  print('''
     =================== INFORMAÇÕES ======================
         Aluno(a): $nome
         Curso: $curso
         Mensalidade: $precoMensal
         Tempo de duração: $duracao anos
         Preço total Curso: $precoCurso
         50% desconto preço mensalidade: $precoMensalidade
         75% desconto preço curso: $desconto
     ======================================================
 ''');
}

// Funções sem retorno e com parâmetro

/* Funções com retorno e sem parâmetro */
String nomeAluno() {
  print('Nome do Aluno: ');
  String nomeAluno = stdin.readLineSync()!;

  return nomeAluno;
}

String nomeCurso() {
  print("Nome do Curso: ");
  String nomeCurso = stdin.readLineSync()!;

  return nomeCurso;
}

double mensalidade() {
  print("Preço da mensalidade: ");
  String mensalidade = stdin.readLineSync()!;
  double converterMensalidade = double.parse(mensalidade);
  return converterMensalidade;
}

int duracaoCurso() {
  print("Duração do curso em anos: ");
  String duracaoCurso = stdin.readLineSync()!;
  int converterDuracaoCurso = int.parse(duracaoCurso);
  return converterDuracaoCurso;
}

/* Funções com retorno e com parâmetro */

// Calcular preço total do Curso
double precoTotalCurso(double precoMensal, int duracao) {
  double qtdMeses = duracao * 12;
  double precoTotal = qtdMeses * precoMensal;
  return precoTotal;
}

// Desconto de 50% na mensalidade
double descontoMensalidade(double precoMensal) {
  double desconto = precoMensal * (50 / 100);
  return desconto;
}

// Desconto de 75% do preço do curso
double descontoCurso(double precoMensal, int duracao) {
  double qtdMeses = duracao * 12;
  double precoTotal = qtdMeses * precoMensal;
  double desconto = precoTotal * (75 / 100);
  return desconto;
}
