void main() {
  String linguagem = 'Dart';

  // Por meio de if/else
  if (linguagem == 'Dart') {
    print('Linguagem muito legal!!!');
  } else if (linguagem == 'C') {
    print('Linguagem complicada.');
  } else if (linguagem == 'Swift') {
    print('Linguagem mega complicada.');
  } else {
    print('Linguagem desconhecida.');
  }

  // Usando o switch case
  switch (linguagem) {
    case 'Dart':
      print('Linguagem muito legal!!!');
      break;
    case 'C':
      print('Linguagem complicada.');
      break;
    case 'Swift':
      print('Linguagem mega complicada');
      break;
    default:
      print('Linguagem desconhecida.');
  }
}
