// O que é Herança?
// Herança é um conceito de orientação a objetos que permite que uma classe herde os atributos e métodos de outra classe.

void main() {
  // Para instanciar um objeto de uma classe que herda os atributos e métodos de outra classe, basta utilizar a palavra reservada new, seguida do nome da classe, seguido de parênteses.
  Cachorro cachorro = Cachorro();
  cachorro.nome = 'Rex';
  cachorro.idade = 2;
  cachorro.comer();
  cachorro.dormir();
  cachorro.latir();

  Gato gato = Gato();
  gato.nome = 'Miau';
  gato.idade = 1;
  gato.comer();
  gato.dormir();
  gato.miar();
}

// Considerando que temos duas classes, Cachorro e Gato, que possuem atributos e métodos em comum, podemos criar uma classe pai, Animal, que irá conter os atributos e métodos em comum, e as classes Cachorro e Gato irão herdar os atributos e métodos da classe Animal.
class Animal {
  String? nome;
  int? idade;

  void comer() {
    print('$nome comeu!');
  }

  void dormir() {
    print('$nome dormiu!');
  }
}

// Para que uma classe herde os atributos e métodos de outra classe, basta utilizar a palavra reservada extends, seguida do nome da classe pai.
class Cachorro extends Animal {
  void latir() {
    print('$nome latiu!');
    print('au au!');
  }
}

class Gato extends Animal {
  void miar() {
    print('$nome miou!');
    print('miau!');
  }
}
