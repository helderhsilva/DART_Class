void main() {
  // Os parâmetros são valores que são passados para a função para serem usados dentro dela.
  printSaudacao('Helder', sep: 'x', mostrarData: false);
  printSaudacao('Helder Henrique', sep: '*');
}

// As funções podem receber parâmetros que são valores que são passados para a função para serem usados dentro dela.
// Eles são declarados entre parênteses, separados por vírgula, e possuem um tipo.

// Função que imprime uma saudação.
// #param String nome: Nome da pessoa que será saudada. O parâmetro é obrigatório.
// #param [bool mostrarData = true]: Se a data atual deve ser mostrada. Quando o parametro é colocado entre colchetes, ele é opcional e deve ter um valor padrão. Eles também são posicionais, ou seja, o primeiro parâmetro opcional é o primeiro, o segundo é o segundo, e assim por diante.
// #param [String sep = '-']: Caractere que será usado para separar a saudação.
// Se trocarmos o colchete por chaves, o parâmetro passa a ser nomeado, ou seja, podemos passar os parâmetros na ordem que quisermos.
void printSaudacao(String nome, {bool mostrarData = true, String sep = '-'}) {
  // Usar o * 20 é uma forma de repetir o caractere '-' 20 vezes.
  print(sep * 20);

  print('Saudações do $nome!');
  print('Seja bem-vindo(a)');

  if (mostrarData) {
    // Podemos chamar uma função dentro de outra função.
    // Neste caso, a função 'agora' é chamada dentro da função 'printSaudacao'.
    print('Data atual: ${agora()}');
  }
}

// Função que retorna a data atual.
String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
