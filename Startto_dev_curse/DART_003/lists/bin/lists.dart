// Coleções são formas de organizar um conjunto de dados.

void main() {
  // Listas: são coleções que podem receber qualquer tipo de dado.
  // São muito úteis para armazenar dados que podem ser alterados.

  // Uma lista que pode receber qualquer tipo de dado é uma lista dinâmica.
  // Para criar uma lista dinâmica, basta usar o tipo List ou definir o tipo de dado que a lista vai receber.
  // List | List<dynamic>
  List<dynamic> dinamica = [
    'Helder',
    10,
    false,
    'Henrique',
    'Silva',
    10.5,
  ];

  print('Lista dinâmica: $dinamica \n');

  // Uma lista que pode receber apenas um tipo de dado é uma lista estática.
  // Para criar uma lista estática, basta definir o tipo de dado que a lista vai receber.
  // List<String> | List<int> | List<double> | List<bool>
  List<String> nomes = [
    'Helder',
    'Henrique',
    'Silva',
  ];

  print('Lista estática: $nomes \n');

  List<int> numeros = [
    10,
    20,
    30,
  ];

  print('Lista estática: $numeros \n');

  // Podemos saber o tamanho de uma lista usando o atributo length.
  print('Tamanho da lista estática nomes: ${nomes.length}');
  print('Tamanho da lista estática numeros: ${numeros.length} \n');

  // Podemos pegar o primeiro elemento de uma lista usando o atributo first.
  print('Primeiro elemento da lista estática nomes: ${nomes.first}');
  print('Primeiro elemento da lista estática numeros: ${numeros.first} \n');

  // Podemos pegar o último elemento de uma lista usando o atributo last.
  print('Último elemento da lista estática nomes: ${nomes.last}');
  print('Último elemento da lista estática numeros: ${numeros.last} \n');

  // Podemos saber se uma lista está vazia usando o atributo isEmpty.
  print('Lista estática nomes está vazia? ${nomes.isEmpty}');
  print('Lista estática numeros está vazia? ${numeros.isEmpty} \n');

  // Podemos pegar valores de uma lista usando o operador [].
  // O indice deve ser maior ou igual a 0 e menor que o tamanho da lista.
  print('Valor da lista estática nomes na posição 0: ${nomes[0]}');
  print('Valor da lista estática numeros na posição 0: ${numeros[0]} \n');
}
