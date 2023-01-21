void main() {
  printSaudacao('Helder');
}

// Função que imprime uma saudação.
void printSaudacao(
  String nome, {
  bool mostrarData = true,
  String? cliente,
}) {
  print('Saudações do ${nome.toUpperCase()}!');

  String c = cliente ?? 'Cliente não informado';

  print('Seja bem-vindo(a), ${c.toUpperCase()}!');

  if (mostrarData) {
    print('Data atual: ${agora()}');
  }
}

// Função que retorna a data atual.
String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}

// Tipos de parametros:
void funcao(
  String a, // obrigatório (posicional, não pode ser nulo)
  String? b, // obrigatório (posicional, pode ser nulo)
  {
  String? c = 'abc', // opcional (nomeado, pode ser nulo)
  required String d, // obrigatório (nomeado, não pode ser nulo)
  required String? e, // obrigatório (nomeado, pode ser nulo)
  String f = 'qwe', // opcional (nomeado, não pode ser nulo)
}) {}
