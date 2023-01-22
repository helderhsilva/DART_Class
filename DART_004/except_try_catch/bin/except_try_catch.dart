// Uma exceção é um erro que ocorre durante a execução de um programa.
// As exceções devem ser tratadas para que o programa não pare de executar.
// O try é usado para testar um bloco de código para erros.
// O catch é usado para tratar o erro.
// O finally é usado para executar o código, independentemente do resultado do try e catch.

void main() {
  // Exemplo 1: Um usuário tenta dividir um número por zero.
  // Exemplo 2: Um usuário tenta converter uma string para double.
  // Para tratar uma exceção, usamos o bloco try-catch.
  try {
    int resultado = 100 ~/ 2; // O operador ~/ é usado para divisão inteira.
    print(resultado);

    // O método tryParse tenta converter uma string para double.
    // Se a string não for um número, o método retorna null.
    double? valor = double.tryParse('50.2a');
    print(valor);
  } on UnsupportedError {
    print('Não é possível dividir por zero');
  } on FormatException catch (e) {
    print('Não é possível converter o valor para doule $e');
  } catch (e) {
    print(e);
  } finally {
    print('Fim');
  }
}
