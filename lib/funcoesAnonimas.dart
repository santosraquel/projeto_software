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

void show() {
  dadosAluno();
}

String verificarAprovacaoDisciplina(int opcao, double nota1, double nota2,
    double nota3, int peso1, int peso2, int peso3, double mediaDisciplina) {
  if (opcao == 1) {
    return calcularMediaAritmetica(nota1, nota2, nota3, mediaDisciplina);
  }
  if (opcao == 2) {
    return calcularMediaPonderada(
        nota1, nota2, nota3, peso1, peso2, peso3, mediaDisciplina);
  } else {
    return 'Opção inválida';
  }
}

String calcularMediaAritmetica(
    double nota1, double nota2, double nota3, double mediaDisciplia) {
  double media = (nota1 + nota2 + nota3) / 3;
  if (media >= mediaDisciplia) {
    return '$media (APROVADO)';
  } else {
    return '$media (REPROVADO)';
  }
}

String calcularMediaPonderada(double nota1, double nota2, double nota3,
    int peso1, int peso2, int peso3, double mediaDisciplia) {
  double media = ((nota1 * peso1) + (nota2 * peso2) + (nota3 * peso3)) /
      (peso1 + peso2 + peso3);
  if (media >= mediaDisciplia) {
    return '$media (APROVADO)';
  } else {
    return '$media (REPROVADO)';
  }
}

void dadosAluno() {
  print('Nome do Aluno:');
  String nomeAluno = stdin.readLineSync()!;

  print('Nome da disciplina: ');
  String nomeDisciplina = stdin.readLineSync()!;

  print('Nota 1: ');
  String nt1 = stdin.readLineSync()!;
  double nota1 = double.parse(nt1);

  print('Nota 2: ');
  String nt2 = stdin.readLineSync()!;
  double nota2 = double.parse(nt2);

  print('Nota 3: ');
  String nt3 = stdin.readLineSync()!;
  double nota3 = double.parse(nt3);

  print('Peso 1: ');
  String ps1 = stdin.readLineSync()!;
  int peso1 = int.parse(ps1);

  print('Peso 2: ');
  String ps2 = stdin.readLineSync()!;
  int peso2 = int.parse(ps2);

  print('Nota 3: ');
  String ps3 = stdin.readLineSync()!;
  int peso3 = int.parse(ps3);

  print('Média da disciplina: ');
  String media = stdin.readLineSync()!;
  double mediaDisciplina = double.parse(media);

  String mediaArtimetica = verificarAprovacaoDisciplina(
      1, nota1, nota2, nota3, 0, 0, 0, mediaDisciplina);

  String mediaPonderada = verificarAprovacaoDisciplina(
      2, nota1, nota2, nota3, peso1, peso2, peso3, mediaDisciplina);
  print('''
        ======================= DADOS DO ALUNO ============================
              Aluno(a): $nomeAluno
              Disciplina: $nomeDisciplina
              Média da Disciplina: $mediaDisciplina
              Média Aritmética: $mediaArtimetica
              Média Ponderada: $mediaPonderada
        ===================================================================
''');
}
