void main() {
  // Chamando a função 'printSaudacao' para executar o código dentro dela.
  printSaudacao();
}

// A função abaixo imprime uma mensagem na tela.
void printSaudacao() {
  print('Saudações do Helder Henrique!');
  print('Seja bem-vindo(a)');

  // Podemos chamar uma função dentro de outra função.
  // Neste caso, a função 'agora' é chamada dentro da função 'printSaudacao'.
  print('Data atual: ${agora()}');
}

// O retorno de uma função é o valor que ela retorna ao ser chamada.
// O retorno de uma função é opcional, ou seja, uma função pode não retornar nada (void).
// Para retornar um valor, basta usar a palavra-chave 'return' seguida do valor a ser retornado.
// O valor retornado pode ser de qualquer tipo, como String, int, double, bool, etc.
// Quando uma função retorna um valor, o tipo do valor retornado deve ser declarado após a lista de parâmetros.

// Função que retorna a data atual.
String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
