void main() {
  // Mapas são estruturas de dados que armazenam dados em pares de chave e valor.

  // Primeiro cenário: Mapa para ddd e estado brasileiro.
  // Colocar ? no tipo do valor não faz diferença, pois o valor pode ser nulo.
  // Mas permite que possamos colocar null no valor.
  // As chaves não podem ser repetidas, mas os valores podem.
  // O mapa pode ser inicializado vazio também.

  // 1. Mapa que não pode receber valores nulos.
  Map<int, String> ddds1 = {
    11: 'São Paulo',
    21: 'Rio de Janeiro',
    31: 'Minas Gerais',
    32: 'Minas Gerais',
    61: 'Distrito Federal',
    71: 'Bahia',
    81: 'Pernambuco',
    91: 'Pará',
  };

  print('Mapa que não pode receber valores nulos');
  ddds1.forEach((key, value) {
    print('DDD: $key - Estado: $value');
  });

  // 2. Mapa que pode receber valores nulos.
  Map<int, String?> ddds2 = {
    11: 'São Paulo',
    21: 'Rio de Janeiro',
    31: 'Minas Gerais',
    32: 'Minas Gerais',
    61: 'Distrito Federal',
    71: 'Bahia',
    81: 'Pernambuco',
    91: 'Pará',
    92: null,
  };

  print('\nMapa que pode receber valores nulos');
  ddds2.forEach((key, value) {
    print('DDD: $key - Estado: $value');
  });

  // 3. Mapa que não precisa ser inicializado, ou seja, pode ser nulo.
  Map<int, String>? ddds3;

  print('\nMapa que não precisa ser inicializado, ou seja, pode ser nulo');
  print('ddds3 = $ddds3');

  // 4. Mapa que pode ser nulo e pode receber valores nulos.
  Map<int, String?>? ddds4;

  if (ddds4 != null) {
    ddds4.forEach((key, value) {
      print('DDD: $key - Estado: $value');
    });
  }
}
