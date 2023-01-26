// O que é um objeto?
// Objetos são instâncias de classes.
// Em analogia com a vida real, podemos dizer que um objeto é uma entidade que possui características e comportamentos. Em programação, um objeto é uma instância de uma classe, que possui atributos e métodos.

// O que é instanciar um objeto?
// Instanciar um objeto é criar uma variável que armazena uma instância de uma classe.

// O que são atributos?
// Atributos são as características de um objeto.
// Em programação, os atributos são as variáveis que pertencem a um objeto.

// O que é classe?
// Uma classe é um modelo que define os atributos e comportamentos de um objeto.

void main() {
  // Instanciando um objeto
  // o new serve para instanciar um objeto de uma classe. Em Dart, o new é opcional.
  Pessoa pessoa_01 = Pessoa();

  // Acessando atributos
  // Para acessar um atributo de um objeto, utilizamos o operador ponto (.)
  pessoa_01.nome = 'Helder';
  pessoa_01.idade = 25;

  print(pessoa_01.nome);
  print(pessoa_01.idade);
  print(pessoa_01.vivo);

  // Cada objeto possui seus próprios atributos
  Pessoa pessoa_02 = Pessoa();
  pessoa_02.nome = 'João';
  pessoa_02.vivo = false;

  print(pessoa_02.nome);
  print(pessoa_02.idade);
  print(pessoa_02.vivo);
}

// Definindo uma classe
class Pessoa {
  // Atributos
  String? nome;
  int? idade;
  bool vivo = true;
}
