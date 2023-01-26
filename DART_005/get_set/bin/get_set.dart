// O que são getters?
// getters são métodos que retornam um valor de um atributo.
// Eles servem para proteger o atributo de ser alterado.

// O que são setters?
// setters são métodos que alteram um valor de um atributo.
// Eles servem para proteger o atributo de ser alterado.

void main() {
  Pessoa pessoa_01 = Pessoa(nome: 'Helder', idade: 25);
  Pessoa pessoa_02 = Pessoa(nome: 'Maria', idade: 27, casado: true);

  pessoa_01.dinheiro = 1000;
  pessoa_02.dinheiro = 200000000;

  print(pessoa_01.dinheiro);
  print(pessoa_02.dinheiro);
}

class Pessoa {
  // Construtor
  Pessoa(
      {required this.nome,
      required this.idade,
      this.vivo = true,
      this.casado = false}) {
    print('Criando o(a) $nome com idade $idade');
  }

  // Atributos
  String nome;
  int idade;
  bool vivo;
  bool casado;

  // O "_" antes do nome do atributo é uma convenção para dizer que o atributo é privado.
  // Ser privado significa que o atributo só pode ser acessado dentro da classe.
  double? _dinheiro;

  // Métodos
  int aniversario() {
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

  // Setters: são métodos que alteram um valor de um atributo.
  set dinheiro(double? valor) {
    if (valor != null && valor >= 0 && valor < 1000000) {
      print('Modficando o dinheiro do $nome');
      _dinheiro = valor;
    } else {
      print('Valor inválido!');
    }
  }

  // Getters: são métodos que retornam um valor de um atributo.
  double? get dinheiro {
    print('Retornando o dinheiro do $nome');
    return _dinheiro;
  }
}
