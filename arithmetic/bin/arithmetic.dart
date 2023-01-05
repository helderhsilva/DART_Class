void main() {
  double n1 = 10.5;
  double n2 = 47.9;
  int n3 = 3;

  // Multiplicação:
  double r1 = n1 * n2;
  print('R1 = $r1');

  // Divisão:
  double r2 = n1 / n2;
  print('R2 = $r2');

  // Soma:
  double r3 = n1 + n2 + n3;
  print('R3 = $r3');

  // Subtração:
  double r4 = n1 - n2 - n3;
  print('R4 = $r4');

  // Parenteses e acréscimo de constantes
  double r5 = (((n1 * n2) / 2) + n3) * 2;
  print('R5 = $r5');

  print('\n----------------\n');

  // Caso queira fazer uma operação com uma variável e salvar nela mesma.
  n1 *= 10; // n1 = n1 * 10;
  print('N1 = $n1');

  n1 += 10; // n1 = n1 + 10;
  print('N1 = $n1');

  n1 -= 10; // n1 = n1 - 10;
  print('N1 = $n1');

  n1 /= 10; // n1 = n1 / 10;
  print('N1 = $n1');

  print('\n----------------\n');

  // Incremento e Decremento em 1
  n3++;
  print('N3 = $n3');
  n3--;
  print('N3 = $n3');

  print('\n----------------\n');

  // Resto da Divisão
  int resto = n3 % 2;
  print('Resto = $resto');
}
