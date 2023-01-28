// A reescrita de métodos permite que você altere o comportamento de um método herdado.

void main() {
  Cachorro cachorro = Cachorro();
  cachorro.nome = 'Rex';
  cachorro.idade = 2;
  print(cachorro);
  cachorro.comer();
  cachorro.dormir();
  cachorro.latir();

  Gato gato = Gato();
  gato.nome = 'Miau';
  gato.idade = 1;
  print(gato);
  gato.comer();
  gato.dormir();
  gato.miar();
}

// Toda classe em Dart é filha da classe Object.
class Animal {
  String? nome;
  int? idade;

  void comer() {
    print('$nome comeu!');
  }

  void dormir() {
    print('$nome dormiu!');
  }

  // Podemos sobrescrever o método toString() para que ele retorne uma string com os valores dos atributos.
  @override
  String toString() {
    return 'Nome: $nome, Idade: $idade';
  }
}

class Cachorro extends Animal {
  void latir() {
    print('$nome latiu!');
    print('au au!');
  }

  // Para reescrever um método, basta utilizar a palavra reservada @override, seguida do nome do método.
  @override
  void dormir() {
    print('$nome dormiu!');
    print('zzz');
  }

  @override
  String toString() {
    return 'Cachorro - Nome: $nome, Idade: $idade';
  }
}

class Gato extends Animal {
  void miar() {
    print('$nome miou!');
    print('miau!');
  }

  @override
  String toString() {
    return 'Gato - Nome: $nome, Idade: $idade';
  }
}
