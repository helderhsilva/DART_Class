void main() {
  // Mapas são estruturas de dados que armazenam dados em pares de chave e valor.

  // Primeiro cenário: Mapa para ddd e estado brasileiro.
  // Colocar ? no tipo do valor não faz diferença, pois o valor pode ser nulo.
  // Mas permite que possamos colocar null no valor.
  // As chaves não podem ser repetidas, mas os valores podem.
  // O mapa pode ser inicializado vazio também.
  Map<int, String> ddds = {
    11: 'São Paulo',
    21: 'Rio de Janeiro',
    31: 'Minas Gerais',
    32: 'Minas Gerais',
    61: 'Distrito Federal',
    71: 'Bahia',
    81: 'Pernambuco',
    91: 'Pará',
  };

  // Podemos passar por cada um dos elementos e fazer uma operação com forEach.
  ddds.forEach((key, value) {
    print('DDD: $key - Estado: $value');
  });

  // Podemos usar addAll para adicionar mais elementos ao mapa.
  ddds.addAll({17: 'São José do Rio Preto', 19: 'Campinas'});
  print('\nAdicionando mais elementos ao mapa com addAll: $ddds');

  // Podemos usar removeWhere para remover elementos do mapa.
  ddds.removeWhere((key, value) => key > 20);
  print('\nRemovendo elementos do mapa com removeWhere: $ddds');

  // O operador Null-Assertion (!) é usado para dizer ao Dart que o valor não é nulo.
  // Ele é usado quando sabemos que o valor não é nulo.
  String cidade = ddds[11]!;
  print('\nCidade do DDD 11: $cidade');
  
  // Podemos apagar todos os elementos do mapa com clear.
  ddds.clear();
  print('\nApagando todos os elementos do mapa com clear: $ddds');
}
