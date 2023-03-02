void main() {
  // Mapas são estruturas de dados que armazenam dados em pares de chave e valor.

  // Primeiro cenário: Mapa para ddd e estado brasileiro.
  // Colocar ? no tipo do valor não faz diferença, pois o valor pode ser nulo.
  // Mas permite que possamos colocar null no valor.
  // As chaves não podem ser repetidas, mas os valores podem.
  // O mapa pode ser inicializado vazio também.
  Map<int, String?> ddds = {
    11: 'São Paulo',
    21: 'Rio de Janeiro',
    31: 'Minas Gerais',
    32: 'Minas Gerais',
    61: 'Distrito Federal',
    71: 'Bahia',
    81: 'Pernambuco',
    91: 'Pará',
    0: null,
  };

  String? cidade = ddds[11];
  print(cidade);

  // Podemos obter o tamanho do mapa com o método length.
  print('\nTamanho do mapa com o método length: ${ddds.length}');

  // Para adicionar um novo elemento no mapa, basta usar o operador [].
  // Se a chave já existir, o valor será atualizado.
  ddds[41] = 'Paraná';

  print('\nAdicionando um novo elemento no mapa com operador []: $ddds');

  // Remover um elemento do mapa, basta usar o método remove.
  ddds.remove(41);
  print('\nRemovendo o elemento com a chave 41, usando remove: $ddds');

  // Podemos usar o metodo values para obter todos os valores do mapa.
  print('\nTodos os valores do mapa com o método values: ${ddds.values}');

  // Podemos usar o metodo keys para obter todas as chaves do mapa.
  print('\nTodas as chaves do mapa com o método keys: ${ddds.keys}');

  // Verificar se o mapa contém uma chave específica com o método containsKey.
  print(
      '\nVerificando se o mapa contém a chave 11, com o método containsKey: ${ddds.containsKey(11)}');

  // Verificar se o mapa contém um valor específico com o método containsValue.
  print(
      '\nVerificando se o mapa contém o valor Minas Gerais, com o método containsValue: ${ddds.containsValue('Minas Gerais')}');

  // Verificar se o mapa está vazio com o método isEmpty.
  print(
      '\nVerificando se o mapa está vazio, com o método isEmpty: ${ddds.isEmpty}');

  // Verificar se o mapa não está vazio com o método isNotEmpty.
  print(
      '\nVerificando se o mapa não está vazio, com o método isNotEmpty: ${ddds.isNotEmpty}');
}
