void main() {
  int n = 10;
  int n2 = 13;

  // Váriável booleana (true or false)
  // bool <nome> = true;

  // Comparação
  bool comp = n == 15;
  print(comp);

  // Diferença
  bool dif = n != n2;
  print(dif);

  // Maior que e Maior ou igual
  bool maior = n > 10;
  bool maiorigual = n >= 10;
  print(maior);
  print(maiorigual);

  // Menor que e Menor ou igual
  bool menor = n < 10;
  bool menorigual = n <= 10;
  print(menor);
  print(menorigual);

  // AND
  // Exemplo: Verificar se n >= 0 E n <= n2
  bool op_and = n >= 0 && n <= n2;
  print(op_and);

  // OR
  // Exemplo: Verificar se n >= 0 OU n <= n2
  bool op_or = n >= 0 || n <= n2;
  print(op_or);

  // OR + AND
  // Exemplo: Verificar se n >= 0 OU n <= n2 E n == 3
  bool op_or_and = n >= 0 || n <= n2 && n == 3;
  print(op_or_and);

  // NOT
  print(!op_or_and);
}
