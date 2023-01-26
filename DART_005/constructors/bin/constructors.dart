// O que são construtores?
// Construtores são métodos que são executados quando um objeto é instanciado.
// Eles servem para inicializar os atributos do objeto.

// O que são construtores nomeados?
// Construtores nomeados são construtores que possuem um nome.
// Eles são utilizados para inicializar os atributos do objeto com valores padrão.

// O que são destructors?
// Destructors são métodos que são executados quando um objeto é destruído.
// Eles servem para finalizar o objeto.

void main() {
  Pessoa pessoa_01 = Pessoa.solteira(nome: 'Helder', idade: 25);

  print(pessoa_01.nome);
  print(pessoa_01.idade);
  print(pessoa_01.vivo);

  pessoa_01.morrer();

  print(pessoa_01.aniversario());
  print(pessoa_01.vivo);

  Pessoa pessoa_02 = Pessoa.casada(nome: 'João', idade: 26);

  print(pessoa_02.nome);
  print(pessoa_02.aniversario());
  print(pessoa_02.vivo);

  pessoa_02.trocarNome('João Paulo');

  print(pessoa_02.nome);
}

class Pessoa {
  // Construtor
  Pessoa(
      {required this.nome,
      required this.idade,
      this.vivo = true,
      this.casado = false}) {
    // O this é uma referência ao objeto que está sendo instanciado.
    // this.nome = nome;
    // this.idade = idade;
    print('Criando o $nome com idade $idade');
  }

  // Construtor nomeado
  Pessoa.casada(
      {required this.nome,
      required this.idade,
      this.vivo = true,
      this.casado = true});

  Pessoa.solteira(
      {required this.nome,
      required this.idade,
      this.vivo = true,
      this.casado = false});

  // Atributos
  String nome;
  int idade;
  bool vivo;
  bool casado;

  // Métodos
  int? aniversario() {
    print('Parabéns, $nome! Você fez aniversário!');
    idade++;
    return idade;
  }

  void morrer() {
    vivo = false;
  }

  void trocarNome(String novoNome) {
    nome = novoNome;
  }
}
