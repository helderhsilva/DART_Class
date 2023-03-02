// O que são métodos?
// Métodos são os comportamentos de um objeto.
// Em programação, os métodos são as funções que pertencem a um objeto.

void main() {
  Pessoa pessoa_01 = Pessoa();

  pessoa_01.nome = 'Helder';
  pessoa_01.idade = 25;

  print(pessoa_01.nome);
  print(pessoa_01.idade);
  print(pessoa_01.vivo);

  pessoa_01.morrer();

  print(pessoa_01.aniversario());
  print(pessoa_01.vivo);

  Pessoa pessoa_02 = Pessoa();
  pessoa_02.nome = 'João';
  pessoa_02.vivo = false;

  print(pessoa_02.nome);
  print(pessoa_02.aniversario());
  print(pessoa_02.vivo);

  pessoa_02.trocarNome(novoNome: 'João Paulo');

  print(pessoa_02.nome);
}

class Pessoa {
  // Atributos
  String? nome;
  int? idade;
  bool vivo = true;

  // Métodos
  int? aniversario() {
    print('Parabéns, $nome! Você fez aniversário!');
    // Só a verificação não é suficiente para garantir que a variável idade não seja nula.
    // Para garantir que a variável idade não seja nula, precisamos utilizar o operador de atribuição nula (??=).
    if (idade != null) {
      idade = idade! + 1;
    }
    return idade;
  }

  void morrer() {
    vivo = false;
  }

  void trocarNome({String? novoNome}) {
    nome = novoNome;
  }
}
