/* Funções Anônimas

Contexto 
 A função anônima geralmente é utilizda quando uma função que tem dados mas tem várias ações que variam.

 funções que precisam dos dados e das ações.

*/

import 'dart:io';

String verificarAprovacaoCompleto(int opcao, double nota1, double nota2) {
  print("Olá Mundo: ");
  if (opcao == 1) {
    // aprovação pela média
    double media = (nota1 + nota2) / 2;
    if (media >= 6) {
      return 'Aprovado';
    } else {
      return 'Reprovado';
    }
  } else if (opcao == 2) {
    // aprovação pela maior nota
    double maior = nota1;
    if (nota2 > nota1) {
      maior = nota2;
    }
    if (maior >= 6) {
      return 'Aprovado';
    } else {
      return 'Reprovado';
    }
  } else {
    // aprovação pela menor nota
    double menor = nota1;
    if (nota2 < nota1) {
      menor = nota2;
    }
    if (menor >= 6) {
      return 'Aprovado';
    } else {
      return 'Reprovado';
    }
  }
}

void show() {
  String resultado = verificarAprovacao(1, 5.5, 6.0);
  print(resultado);

  verificarAprovacao2(10, 5, verificarPelaMedia);
}

// FUNÇÃO ANÔNIMAS: utilizada quando temos uma função que será executada somente uma única vez

// String show2() {
//   verificarAprovacao2(10, 5, (nota1, nota2) {
//     double media = (nota1 + nota2) / 2;
//     if (media >= 6) {
//       return 'Aprovado';
//     } else {
//       return 'Reprovado';
//     }
//   });
// }

// ARROW FUNCTIONS: Quando temos uma função com uma única linha de código
// String show3() {
//   verificarAprovacao2(
//       10,
//       5,
//       (nota1, nota2) =>
//           (((nota1 + nota2) / 2) >= 6) ? 'aprovado' : 'reprovado');
// }

String verificarAprovacao(int opcao, double nota1, double nota2) {
  if (opcao == 1) {
    return verificarPelaMedia(nota1, nota2);
  } else if (opcao == 2) {
    return verificarPelaMaiorNota(nota1, nota2);
  } else {
    return verificarPelaMenorNota(nota1, nota2);
  }
}

String verificarAprovacao2(double nota1, double nota2, Function acao) {
  return acao(nota1, nota2);
}

String verificarPelaMedia(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  if (media >= 6) {
    return 'Aprovado';
  } else {
    return 'Reprovado';
  }
}

String verificarPelaMaiorNota(double nota1, double nota2) {
  double maior = nota1;
  if (nota2 > nota1) {
    maior = nota2;
  }
  if (maior >= 6) {
    return 'Aprovado';
  } else {
    return 'Reprovado';
  }
}

String verificarPelaMenorNota(double nota1, double nota2) {
  double menor = nota1;
  if (nota2 < nota1) {
    menor = nota2;
  }
  if (menor >= 6) {
    return 'Aprovado';
  } else {
    return 'Reprovado';
  }
}


/*
Atividade I 
1). Qual a diferença entre a 1º e a 2º forma? Na sua opinião, o que melhorou 
e o que piorou?

  RESPOSTA: 
  OBS: Separando as ações em outras funções
  A diferença entre a 1ª e a 2ª forma é que no primeiro exemplo temos uma função
  que dificulta o entendimento por conter várias ações, o dificulta também a manutenção do software.
  Já na 2ª forma com as ações separadas em funções o código fica mais legivel, além de também facilitar a 
  manutenção do código. Pois se caso surgir um bug o programador saberá onde extamente ocorreu o erro
  devido as funcionalidades estarem separadas. Além disso, separando o código em funções facilita o desenvolvimento 
  de testes unitários.

  OBS: Passando outra função como parâmetro de outras função
  A diferença entra a 1ª e a 2ª forma é que no primeiro exemplo nossa função recebia somente como parâmetro
  atributos normais (opcao, nota1 e nota2), já na 2ª forma além dos atributos normais (nota1 e nota2) recebemos como 
  parâmetro uma outra função. A vantagem de passar uma função como parâmetro de outra é que podemos utilizar dados
  que estão sendo manipulados em uma outra função de forma indireta.

2). O que é e para que serve parâmetros do tipo função? Em que caso utilizamos? OBS: Passar uma função como parâmetro
  Parâmetros do tipo função é quando temos uma função que recebe como parâmetro/argumento outra função.
  Utilizamos isso, quando necessitamos que uma função trabalhe com dados que estão em outra função.

Atividade II - Defina 3 funções do mesmo contexto e uma interface para estas 
funções
→ função para escolha das funções do Salário 
→ Receber salario e um valor. Bonificar e retornar o valor do salário.
→ Receber salario e um valor. Descontar e retornar o valor do salário.
→ Receber salario e um valor. Neste caso o valor é o bônus que tem encargos de 10%. 
Adicionar o bônus e retornar o valor do salário.

Atividade III
Pensar em um projeto único 
Fazer um exemplo seu
*/


