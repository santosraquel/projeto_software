import 'dart:io';

/* Funções com retorno e


*/

void main() {
  // chamada função com parâmetros opcionais (valor padrão)
  criarBotao("Excluir");

  // chamada função com parâmetros nomeados obrigatórios
  criarBotao1("Excluir", cor: "vermelho", largura: 10.00);

  // chamada função com parâmetros nomeados opcionais
  criarBotao2("Excluir");

  // chamada função com parâmetros nomeados obrigatórios e opcionais
  criarBotao3("Excluir", cor: "vermelho");
}

// Duas funções com parâmetros opcionais (valor padrão)
void criarBotao(String texto, {String cor = "branco", double largura = 15.0}) {
  print(texto);
  print(cor);
  print(largura);
}

// Uma função com parâmetros nomeados obrigatórios;
void criarBotao1(String texto, {required String cor, required double largura}) {
  print(texto);
  print(cor);
  print(largura);
}

// Uma função com parâmetros nomeados opcionais;
void criarBotao2(String texto, {String cor = "branco", double largura = 15.0}) {
  print(texto);
  print(cor);
  print(largura);
}

// Uma função com parâmetros nomeados obrigatórios e opcionais;
void criarBotao3(String texto, {required String cor, double largura = 15.0}) {
  print(texto);
  print(cor);
  print(largura);
}

// Uma única função com parâmetros nomeados e anônimos;
void criarBotao4(String texto, {required String cor, double largura = 15.0}) {
  print(texto);
  print(cor);
  print(largura);
}

/*
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

1) Em que caso os parâmetros nomeados são úteis? 
  Os parâmetros nomeados são uteis quando queremos passar os parâmetros para uma
  determinada função sem necessariamente respeitar uma ordem.

2) Por padrão os parâmetros nomeados são opcionais ou obrigatórios? Caso sejam opcionais, como torná-los obrigatórios?
  Por padrão os parâmetros nomeados são OPCIONAIS, assim é necessário definir o valor padrão
  Para tornar parâmetros nomeados obrigatórios utilizamos a palavra chave "required".
  O objetivo dos parâmetros nomeados é tornar a leitura mais claro 
  Com parâmetros nomeados, na chamada da função, podemos definir a ordem aleatória dos parâmetros

3) Qual a sintaxe para fazer a chamada de uma função com os parâmetros nomeados? 
  int main (){
    // chamada função com parâmetros nomeados
    nome_função(2º arg: valor, 5º arg: valor, 2º arg: valor, ....);
    return 0;
  }

  tipo_retorno nome_função({1º arg, 2º arg, ...}){
    // intruções
  }

4) É possível definir uma única função com parâmetros nomeados e anônimos?
  Sim.

5) Quais são as vantagens em utilizar parâmetros nomeados? 
  A principal vantagem de se utilizar funções com parâmetros nomeados é que quando
  essa função for chamada não precisamos passar os parâmetros respeitando uma ordem.

6) Quais são as diferenças entre parâmetros nomeados e anônimos?
*/