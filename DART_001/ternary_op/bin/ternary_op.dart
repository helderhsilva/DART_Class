void main() {
  // Operador ternário (condição ? valor se verdadeiro : valor se falso)

  double nota = 3.0;
  String mensagem = nota >= 5.0 ? 'Aprovado' : 'Reprovado';

  int numero = nota >= 5.0 && nota != 7.0 ? 10 : 5;

  print(mensagem);
  print(numero);
}
