void main() {
  printSaudacao('Helder');
}

// Dicas para o uso das variáveis nullable:
// Para converter uma variável nullable para uma variável não nullable, podemos verificar se o valor é diferente de 'null'.

// Função que imprime uma saudação.
void printSaudacao(
  String nome, {
  bool mostrarData = true,
  String? cliente,
}) {
  // Spondo que quueremos o nome em caixa alta. Devemos usar '.toUpperCase()' para isso.
  // Devemos colocar o nome entre parênteses para que o Dart saiba que queremos usar o método '.toUpperCase()'.
  print('Saudações do ${nome.toUpperCase()}!');

  // Não se pode colocar uma variável nullable dentro de uma string não nullable.
  // Para isso, devemos converter a variável nullable para uma variável não nullable.
  // Isso pode ser feiro colocando um valor padrão para a variável nullable.
  // Podemos usar o operador '??' (null aware operator) para converter a variável nullable para uma variável não nullable.
  // O operador '??' verifica se o valor da variável é diferente de 'null'.
  // Se o valor da variável for diferente de 'null', o operador '??' retorna o valor da variável.
  // Se o valor da variável for 'null', o operador '??' retorna o valor que está depois dele.
  String c = cliente ?? 'Cliente não informado';

  // O if abaixo verifica se o valor de 'cliente' é diferente de 'null'.
  // Dessa forma não há problema em usar o método '.toUpperCase()' em 'cliente'.
  //if (cliente != null) {
  print('Seja bem-vindo(a), ${c.toUpperCase()}!');
  //}

  if (mostrarData) {
    print('Data atual: ${agora()}');
  }
}

// Função que retorna a data atual.
String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
