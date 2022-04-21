import 'dart:io';
/* 
 Sistema: Gestão Acadêmica
 DATA: 20/04/2022
 TEMA DA AULA: Funções Anônimas

  Informar:
    - Nome do aluno
    - Disciplina
    - Média para aprovação na diciplina
    Retornar "Relatório" contendo:
     - nome do aluno
     - nome da disciplinas
     - a média para aprovação na disciplina
     - as notas informadas
     - a média das notas
     - se o aluno foi aprovado ou não

*/

void print() {}

void verificarAprovacaoDisciplia(
    int opcao, double nota1, double nota2, double nota3) {
  if (opcao == 1) {
  } else if (opcao == 2) {}
}

String nomeDisciplina() {
  print("Nome da Disciplina: ");
  String nomeDisciplina = stdin.readLineSync()!;

  return nomeDisciplina;
}

double mediaDisciplina() {
  print('Média para aprovação: ');
  String mediaAprovacao = stdin.readLineSync()!;
  double converterMediaAprovacao = double.parse(mediaAprovacao);

  return converterMediaAprovacao;
}
