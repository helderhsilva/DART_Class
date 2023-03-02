// Operação de cascata é uma técnica que permite chamar vários métodos em um único objeto.

void main() {
  List<String> nomes = [];

  // A operação de cascata é feita usando o operador de cascata (..).
  // O retorno do método é o próprio objeto.
  nomes
    ..add('Helder')
    ..add('Henrique')
    ..add('Silva')
    ..remove('Helder');

  print(nomes);
}
