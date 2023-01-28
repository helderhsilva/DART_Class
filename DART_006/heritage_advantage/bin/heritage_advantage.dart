// Quais as vantagens da Herança?
// A herança permite que você reutilize código, evitando a repetição de código.

void main() {
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

  //List<Cachorro> cachorros = [];
  //List<Gato> gatos = [];
  List<Animal> animais = [];
  animais.add(cachorro);
  animais.add(gato);

  Animal animal1 = funcao();
  if (animal1 is Cachorro) {
    animal1.latir();
  } else if (animal1 is Gato) {
    animal1.miar();
  }
}

Animal funcao() {
  return Cachorro();
}

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
