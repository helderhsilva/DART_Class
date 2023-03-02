void main() {
  Movel movel1 = Pessoa();
  Movel movel2 = Carro();
  Valor valor1 = Geladeira();
  Valor valor2 = Carro();

  print(valor1.preco());
  print(valor2.preco());

  movel1.direita();
  movel1.esquerda();
  movel1.frente();
  movel1.tras();

  movel2.direita();
  movel2.esquerda();
  movel2.frente();
  movel2.tras();
}

class Geladeira implements Valor {
  @override
  double preco() {
    return 1000.0;
  }
}

class Pessoa implements Movel {
  String? nome;

  @override
  void direita() {
    // TODO: implement direita
  }

  @override
  void esquerda() {
    // TODO: implement esquerda
  }

  @override
  void frente() {
    // TODO: implement frente
  }

  @override
  void tras() {
    // TODO: implement tras
  }
}

// Podemos implementar mais de uma interface.
class Carro implements Movel, Valor {
  String? modelo;

  @override
  void direita() {
    // TODO: implement direita
  }

  @override
  void esquerda() {
    // TODO: implement esquerda
  }

  @override
  void frente() {
    // TODO: implement frente
  }

  @override
  void tras() {
    // TODO: implement tras
  }

  @override
  double preco() {
    return 10000.0;
  }
}

abstract class Movel {
  void frente();
  void tras();
  void direita();
  void esquerda();
}

abstract class Valor {
  double preco();
}
