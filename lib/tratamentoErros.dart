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
  // converterValorProduto("sdf");
  validarPreco(-1.0);
}

// double converterValorProduto(String preco) {
//   double valor;
//   try {
//     valor = double.parse(preco);
//     print("Preço do Produto: RS $valor");
//   } on Exception catch (e) {
//     throw Exception('Erro, o valor informado ($preco) não é um número!');
//   } catch (e) {
//     if (valor < 0) {
//       throw Exception('Erro, valor não pode ser negativo');
//     }
//   }
//   return valor;
// }

double validarPreco(double preco) {
  if (preco < 0) {
    throw PrecoNegativoException(preco);
  }
  return preco;
}

class PrecoNegativoException implements Exception {
  double preco;
  PrecoNegativoException(this.preco);
  @override
  String toString() {
    return "precoNegativoException: $preco";
  }
}

class ConverterPrecoException implements Exception {
  @override
  String toString() {
    return "converterPrecoException";
  }
}
