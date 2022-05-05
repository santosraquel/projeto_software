import 'dart:io';

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

void show() {
  // chamada função com parâmetros opcionais (valor padrão)
  informacoesCurso1("Raquel");

  // chamada função com parâmetros nomeados obrigatórios
  informacoesCurso2("Raquel",
      nomeDisciplina: "Teste de Software", valorCurso: 850.00);

  // chamada função com parâmetros nomeados opcionais
  informacoesCurso3("Raquel");

  // chamada função com parâmetros nomeados obrigatórios e opcionais
  informacoesCurso4("Raquel", nomeDisciplina: "Algoritmos");
}

// Duas funções com parâmetros opcionais (valor padrão)
void informacoesCurso1(String nomeAluno,
    {String nomeDisciplina = "Projeto de Software",
    double valorCurso = 500.00}) {
  print('''
      =============== INFORMAÇÕES ===============
      Aluno(a): $nomeAluno
      Disciplina: $nomeDisciplina
      Preço Curso: $valorCurso
  ''');
}

// Uma função com parâmetros nomeados obrigatórios;
void informacoesCurso2(String nomeAluno,
    {required String nomeDisciplina, required double valorCurso}) {
  print('''
      =============== INFORMAÇÕES ===============
      Aluno(a): $nomeAluno
      Disciplina: $nomeDisciplina
      Preço Curso: $valorCurso
''');
}

// Uma função com parâmetros nomeados opcionais;
void informacoesCurso3(String nomeAluno,
    {String nomeDisciplina = "Projeto de Software",
    double valorCurso = 500.00}) {
  print('''
      =============== INFORMAÇÕES ===============
      Aluno(a): $nomeAluno
      Disciplina: $nomeDisciplina
      Preço Curso: $valorCurso
  ''');
}

// Uma função com parâmetros nomeados obrigatórios e opcionais;
void informacoesCurso4(String nomeAluno,
    {required String nomeDisciplina, double valorCurso = 1050.00}) {
  print('''
      =============== INFORMAÇÕES ===============
      Aluno(a): $nomeAluno
      Disciplina: $nomeDisciplina
      Preço Curso: $valorCurso
  ''');
}

// Uma única função com parâmetros nomeados e anônimos;
