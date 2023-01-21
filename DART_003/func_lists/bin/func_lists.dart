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
  print('Obter o tamanho de uma lista estática com length');
  print('Tamanho da lista estática nomes: ${nomes.length}');
  print('Tamanho da lista estática numeros: ${numeros.length} \n');

  // Podemos pegar o primeiro elemento de uma lista usando o atributo first.
  print('Obter o primeiro elemento de uma lista estática com first');
  print('Primeiro elemento da lista estática nomes: ${nomes.first}');
  print('Primeiro elemento da lista estática numeros: ${numeros.first} \n');

  // Podemos pegar o último elemento de uma lista usando o atributo last.
  print('Obter o último elemento de uma lista estática com last');
  print('Último elemento da lista estática nomes: ${nomes.last}');
  print('Último elemento da lista estática numeros: ${numeros.last} \n');

  // Podemos saber se uma lista está vazia usando o atributo isEmpty.
  print('Verificar se uma lista estática está vazia com isEmpty');
  print('Lista estática nomes está vazia? ${nomes.isEmpty}');
  print('Lista estática numeros está vazia? ${numeros.isEmpty} \n');

  // Podemos pegar valores de uma lista usando o operador [].
  // O indice deve ser maior ou igual a 0 e menor que o tamanho da lista.
  print('Obter valores de uma lista estática com []');
  print('Valor da lista estática nomes na posição 0: ${nomes[0]}');
  print('Valor da lista estática numeros na posição 0: ${numeros[0]} \n');

  // Podemos adicionar um valor a uma lista usando o método add.
  nomes.add('Santos');
  numeros.add(40);

  print('Adicionar um valor a uma lista estática com add');
  print('Lista estática nomes: $nomes');
  print('Lista estática numeros: $numeros \n');

  // Podemos adicionar uma lista a outra lista usando o método addAll.
  nomes.addAll(['Santos', 'Henrique', 'Silva']);
  numeros.addAll([40, 50, 60]);

  print('Adicionar uma lista a outra lista estática com addAll');
  print('Lista estática nomes: $nomes');
  print('Lista estática numeros: $numeros \n');

  // Podemos inserir um valor em uma posição específica de uma lista usando o método insert.
  // O indice deve ser maior ou igual a 0 e menor que o tamanho da lista.
  nomes.insert(3, 'Helder');
  numeros.insert(3, 10);

  print(
      'Inserir um valor em uma posição específica da lista estática com insert');
  print('Lista estática nomes: $nomes');
  print('Lista estática numeros: $numeros \n');

  // Podemos verificar se uma lista contém um valor usando o método contains.
  print('Verificar se uma lista estática contém um valor com contains');
  print('Lista estática nomes contém Helder? ${nomes.contains('Helder')}');
  print('Lista estática numeros contém 10? ${numeros.contains(10)} \n');

  // Podemos verificar o indice de um valor em uma lista usando o método indexOf.
  // Caso o valor não exista na lista, o método retorna -1.
  print('Verificar o indice de um valor na lista estática com indexOf');
  print(
      'Lista estática nomes contém Helder na posição: ${nomes.indexOf('Helder')}');
  print(
      'Lista estática numeros contém 10 na posição: ${numeros.indexOf(10)} \n');

  // Podemos remover um valor de uma lista usando o método remove.
  // Caso o valor não exista na lista, o método não faz nada.
  nomes.remove('Helder');
  numeros.remove(10);

  print('Remover o primeiro elemento da lista estática com remove');
  print('Lista estática nomes: $nomes');
  print('Lista estática numeros: $numeros \n');

  // Podemos remover um valor de uma lista usando o método removeAt.
  // O indice deve ser maior ou igual a 0 e menor que o tamanho da lista.
  nomes.removeAt(0);
  numeros.removeAt(0);

  print('Remover o primeiro elemento da lista estática com removeAt');
  print('Lista estática nomes: $nomes');
  print('Lista estática numeros: $numeros \n');

  // Embaralhar uma lista usando o método shuffle.
  nomes.shuffle();
  numeros.shuffle();

  print('Embaralhar uma lista estática com shuffle');
  print('Lista estática nomes: $nomes');
  print('Lista estática numeros: $numeros \n');

  // Limpar uma lista usando o método clear.
  nomes.clear();
  numeros.clear();

  print('Limpar uma lista estática com clear');
  print('Lista estática nomes: $nomes');
  print('Lista estática numeros: $numeros \n');

  // Uma lista pode ser criada sem nenhum valor.
  // Nesse caso, a lista é criada vazia.
  // Os valores podem ser adicionados posteriormente. 
}
