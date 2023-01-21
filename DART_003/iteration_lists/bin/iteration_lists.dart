void main() {
  List<String> nomes = [
    'Helder',
    'Raphaela',
    'Henrique',
    'Marcos',
    'Eliza',
    'Gustavo',
    'Silva',
  ];

  print('Lista de nomes: $nomes \n');

  // Métodos que podem ser aplicados com listas

  // 1º Caso: Printar todos os nomes da lista em caixa alta
  // Solução 1 (Menos eficiente): Usando for
  // Essa solução é menos eficiente porque ela vai percorrer toda a lista para printar os nomes
  // Nela você pode começar a printar os nomes a partir de um índice específico
  print('1º Caso: Printar todos os nomes da lista em caixa alta com FOR\n');
  for (int i = 2; i < nomes.length; i++) {
    print(nomes[i].toUpperCase());
  }

  // Solução 2: Usando o for de outra forma
  // Nesse for você dá um nome para cada elemento da lista e printa ele.
  // Você pode começar a printar os nomes a partir de um índice específico usando sublist
  print(
      '\n2º Caso: Printar todos os nomes da lista em caixa alta com FOR de outra forma\n');
  for (String nome in nomes.sublist(2, 4)) {
    print(nome.toUpperCase());
  }

  // Solução 3: Usando forEach
  // Nesse forEach você dá um nome para cada elemento da lista e printa ele.
  // Você pode começar a printar os nomes a partir de um índice específico usando sublist
  print(
      '\n3º Caso: Printar todos os nomes da lista em caixa alta com forEach\n');
  nomes.sublist(2, 4).forEach((nome) {
    print(nome.toUpperCase());
  });
}
