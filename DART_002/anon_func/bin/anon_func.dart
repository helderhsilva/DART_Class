void main() {
  // Se passar uma função como parâmetro, não é necessário usar o parênteses.
  // A função é executada dentro da função que a recebeu.
  //printSaudacao('Helder', corpo: funcao);

  // Função anônima, são funções que não possuem nome e são passadas como parâmetro.
  printSaudacao(
    'Helder',
    corpo: (i) {
      for (int j = 0; j < i; j++) {
        print('Olá ${j + 1}');
      }
    },
  );
}

// Função para ser passada como parâmetro.
// void funcao(int i) {
//   for (int j = 0; j < i; j++) {
//     print('Olá ${j + 1}');
//   }
// }

// Função que imprime uma saudação.
void printSaudacao(
  String nome, {
  bool mostrarData = true,
  String? cliente,
  // Passar uma função com parâmetro como parâmetro.
  required Function(int) corpo,
}) {
  print('Saudações do ${nome.toUpperCase()}!');

  // Executar a função passada como parâmetro.
  corpo(10);

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
