void main() {
  printSaudacao('Helder', cliente: 'Mari');

  // Variáveis podem ser nulas. Elas são inicializadas com o valor null.
  // Servem para representar valores que não foram definidos.
  // Quando uma variável é nula, não é possível acessar seus membros.
  // Isso serve para evitar erros de execução.
  // Para acessar os membros de uma variável nula e executar uma ação, é necessário transformá-la em não nula.
  // int? numero;
  // numero++;
}

// Variáveis podem ser nulas. Elas são inicializadas com o valor null.
// Servem para representar valores que não foram definidos.
// Para declarar uma variável nula, basta adicionar o ? após o tipo.

// Função que imprime uma saudação.
void printSaudacao(
  String nome, {
  bool mostrarData = true,
  String? cliente,
}) {
  print('Saudações do $nome!');

  if (cliente != null) {
    print('Seja bem-vindo(a), $cliente!');
  }

  if (mostrarData) {
    print('Data atual: ${agora()}');
  }
}

// Função que retorna a data atual.
String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
