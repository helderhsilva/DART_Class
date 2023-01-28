// O comando super é utilizado para acessar os atributos e métodos da classe pai.
// Também é possível utilizar o comando super para chamar o construtor, os getters e setters da classe pai.

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

  // Para reescrever um método, basta utilizar a palavra reservada @override, seguida do nome do método.
  // O comando super é utilizado para acessar os atributos e métodos da classe pai.
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
