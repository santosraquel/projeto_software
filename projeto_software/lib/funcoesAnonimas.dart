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
import 'dart:io';

String show() {
  String resultado = verificarAprovacaoDisciplina(1, 5.5, 6.0, 8.9, 7.0);
  print(resultado);
}

String verificarAprovacaoDisciplina(int opcao, double nota1, double nota2,
    double nota3, double mediaDisciplina) {
  if (opcao == 1) {
    return calcularMedia(nota1, nota2, nota3, mediaDisciplina);
  } else {
    return dadosAluno();
  }
}

String calcularMedia(
    double nota1, double nota2, double nota3, double mediaDisciplia) {
  double media = (nota1 + nota2 + nota3) / 3;
  if (media >= mediaDisciplia) {
    return 'APROVADO';
  } else {
    return 'REPROVADO';
  }
}

void dadosAluno() {
  print('''
          ================= DADOS ==================
          Aluno: $nomeAluno,
          Disciplina: $nomeDisciplina,
          Média para aprovação: $mediaDisciplina,
          Notas: $notasAluno,
          Média notas: $mediaNotas,
          Situação: $situacao, 
          ==========================================
''');
}
