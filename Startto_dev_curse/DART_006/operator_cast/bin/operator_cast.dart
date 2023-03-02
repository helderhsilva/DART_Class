// O operador cast é utilizado para converter um objeto de um tipo para outro.

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

  // O operador cast é utilizado para converter um objeto de um tipo para outro.
  // Se o objeto não for do tipo esperado, uma exceção é lançada.
  Cachorro animal1 = funcao() as Cachorro;
  animal1.latir();
}

Animal funcao() {
  return Cachorro('Dog', 2);
}

class Animal {
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
}
