// Criar exceções personalizadas.

void main() {
  try {
    funcao(-10);
  } on ParametroInvalido {
    print('O valor deve ser maior que zero.');
  } catch (e) {
    print(e);
  }
}

void funcao(int x) {
  if (x <= 0) {
    throw ParametroInvalido();
  }
  print(x);
}

class ParametroInvalido implements Exception {
  String toString() {
    return 'O valor do parâmetro é inválido. O valor deve ser maior que zero.';
  }
}
