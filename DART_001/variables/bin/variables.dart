void main() {
  // Inteiros.
  int idade = 25;

  // String = Textos.
  String nome = 'Helder';

  // Ponto flutuante (Casa decimal).
  double altura = 1.70;

  print('Meu nome é $nome, tenho $idade anos e $altura m de altura! \n');

  // As variáveis podem ter seus valores modificados.

  idade = 26;
  nome = 'Henrique';

  print('Nome: $nome');
  print('Idade: $idade');

  /*
    As varíaveis são lugares temporários para armazernar suas informações.
    Depois que o programa é fechado, as variáveis são destruídas, portanto não serve para o armazenamento persistente.
  */
}
