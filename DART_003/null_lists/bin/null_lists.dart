void main() {
  // Null-Safety é uma nova funcionalidade do Dart que permite que você escreva código que seja mais seguro e que não lance exceções em tempo de execução.

  // Lista que não pode ser nula, mas pode ser vazia
  // Uma lista vazia é a lista que não possui nenhum elemento
  List<String> lista1 = [];
  lista1.add('A');

  // Lista que pode conter valores nulos;
  List<String?> lista2 = [
    'Helder',
    'Amanda',
  ];

  lista2.add(null);

  // Lista que pode ser nula, ou seja, pode não existir.
  // Uma lista nula é a lista que não foi inicializada.
  // Como essa lista pode ser nula, os metodos dela não podem ser chamados.
  // Para isso devemos convertela para uma lista não nula.
  List<String>? lista3;

  if (lista3 != null) {
    lista3.add('Amanda');
  }

  // Lista que pode ser nula e ter elementos nulos.
  List<String?>? lista4;

  if (lista4 != null) {
    lista4.add(null);
  }

  print('lista1: $lista1');
  print('\nlista2: $lista2');
  print('\nlista3: $lista3');
  print('\nlista4: $lista4');
}
