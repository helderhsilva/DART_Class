void main() {
  // Primeiro cenário: Criar uma lista que ja possúi o mesmo dado várias vezes
  // Podemos usar o metodo filled do List
  List<int> maluca = List.filled(100, 8);

  print('Lista usando o metodo filled');
  print(maluca);

  // Segundo cenário: Criar uma lista que tenha uma sequência de números de 10 em 10
  // Podemos usar o metodo generate do List

  // Usando função por referência
  List<int> doida1 = List.generate(10, funcao);

  print('\nLista usando o metodo generate com função por referência');
  print(doida1);

  // Usando função anônima
  List<int> doida2 = List.generate(10, (index) => index * 10);

  print('\nLista usando o metodo generate com função anônima');
  print(doida2);

  // Terceiro cenário: Verificar se a lista está vazia ou não.
  // Podemos usar o metodo isEmpty e isNotEmpty do List
  print('\nLista vazia? ${doida1.isEmpty}');
  print('Lista não vazia? ${doida1.isNotEmpty}');

  // Quarto cenário: Verificar se há um multiplo de 33 na lista.
  // Podemos usar o metodo any do List
  doida1.removeAt(0);
  print(
      '\nHá multiplos de 33 na lista? ${doida1.any((element) => element % 33 == 0)}');

  // Quinto cenário: Obter o primeiro e o último elemento multiplo de 40.
  // Podemos usar o metodo firstWhere e lastWhere do List
  print(
      '\nPrimeiro elemento multiplo de 40: ${doida1.firstWhere((element) => element % 40 == 0)}');

  print(
      'Último elemento multiplo de 40: ${doida1.lastWhere((element) => element % 40 == 0)}');

  // Sexto cenário: Obter o todos os elementos multiplos de 40.
  // Podemos usar o metodo where do List
  print(
      '\nTodos os elementos multiplos de 40: ${doida1.where((element) => element % 40 == 0)}');

  // Sétimo cenário: Aplicar uma operação de incremento em todos os elementos da lista.
  // Podemos usar o metodo map do List
  print('\nAplicando operação de incremento em todos os elementos da lista');
  print(doida1.map((e) {
    return 2 * e;
  }));
}

int funcao(int index) {
  return index * 10;
}
