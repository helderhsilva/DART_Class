void main() {
  // Variáveis dinâmicas: podem receber qualquer tipo de dado.
  // As vezes não sabe o tipo de dado que vai receber.
  // O tipo de dado é definido no momento da atribuição.

  // O primeiro tipo de variavel dinâmica é o var.
  // O var é uma variável que pode receber qualquer tipo de dado.
  // Quando o var recebe um tipo de dado, ele não pode mais receber outro tipo de dado.
  // Além disso quando o tipo for definido, os métodos e atributos do tipo definido estarão disponíveis.
  var nome = 'Helder';
  var idade = 25;

  nome = 'Henrique';
  idade++;

  print('Dados com var:');
  print('Nome: $nome');
  print('Idade: $idade');

  // O segundo tipo de variável dinâmica é o dynamic.
  // O dynamic é uma variável que pode receber qualquer tipo de dado.
  // Esse tipo de variável pode receber qualquer tipo de dado, inclusive mudar o tipo de dado.
  // É útil em casos especificos, já que os métodos e atributos do tipo definido não estarão disponíveis.
  dynamic variavel = 'Helder';
  variavel = 25;
  variavel = true;

  print('Dados com dynamic:');
  print('Variável: $variavel');

  // O terceiro tipo de variável dinâmica é o num.
  // O num é uma variável que pode receber qualquer tipo de dado numérico.
  // Usado para casos onde não se sabe o tipo de dado numérico que vai receber.
  num numero = 1.25364;

  // Muito usado em funções que recebem números como parâmetros.
  void soma(num numero1, num numero2) {
    print(numero1 + numero2);
  }

  print('Dados com num:');
  soma(1, 2.3);
  print('Número: $numero');
}
