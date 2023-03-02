// A classe abstrata é uma classe que não pode ser instanciada.
// Ela serve como base para outras classes.

void main() {
  Cachorro cachorro = Cachorro('Rex', 2);
  print(cachorro);
  cachorro.comer();
  cachorro.dormir();
  cachorro.latir();

  Gato gato = Gato('Miau', 1);
  print(gato);
  gato.comer();
  gato.dormir();
  gato.miar();

  cachorro.morrer();
  gato.morrer();
}

Animal funcao() {
  return Cachorro('Dog', 2);
}

abstract class Animal {
  Animal(this.nome, this.idade);
  String nome;
  int idade;

  void comer() {
    print('$nome comeu!');
  }

  void dormir() {
    print('$nome dormiu!');
  }

  @override
  String toString() {
    return 'Nome: $nome, Idade: $idade';
  }

  // Com uma classe abstrata podemos definir métodos abstratos.
  // Um método abstrato é um método que não possui implementação.
  // Ele serve apenas para ser sobrescrito pelas classes filhas.
  void morrer();
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade);

  void latir() {
    print('$nome latiu!');
    print('au au!');
  }

  @override
  void dormir() {
    super.dormir();
    print('zzz');
  }

  @override
  String toString() {
    return 'Cachorro - Nome: $nome, Idade: $idade';
  }

  // Sobrescrevendo o método morrer da classe Animal.
  @override
  void morrer() {
    latir();
    print('$nome morreu!');
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade);

  void miar() {
    print('$nome miou!');
    print('miau!');
  }

  @override
  String toString() {
    return 'Gato - Nome: $nome, Idade: $idade';
  }

  // Sobrescrevendo o método morrer da classe Animal.
  @override
  void morrer() {
    miar();
    print('$nome morreu!');
  }
}
