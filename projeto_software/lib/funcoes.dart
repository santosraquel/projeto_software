/* Funções 


*/

import 'dart:io';

// Funções sem retorno e sem parâmetro
void show() {
  imprimirDadosAluno();
}

void imprimirDadosAluno() {
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
