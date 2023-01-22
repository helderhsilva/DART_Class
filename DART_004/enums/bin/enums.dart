// Enumeradores são usados para representar um conjunto de constantes.
// Ele pode especificar um conjunto de valores limitados para uma variável.

enum StatusPagamento {
  pendente,
  pago,
  reembolsado,
}

void main() {
  StatusPagamento status = StatusPagamento.pago;

  switch (status) {
    case StatusPagamento.pendente:
      print(status);
      break;
    case StatusPagamento.pago:
      print(status);
      break;
    case StatusPagamento.reembolsado:
      print(status);
      break;
  }

  // Para converter o enumerador para armazenar em um banco de dados, por exemplo,
  // você pode usar o método index.
  print(status.index);

  // Para converter um inteiro para um enumerador, você pode usar o método values.
  print(StatusPagamento.values[0]);
}
