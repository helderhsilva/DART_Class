// O operador ?. é usado para acessar propriedades de um objeto que pode ser nulo.

void main() {
  Pessoa pessoa_01 = Pessoa(nome: 'Helder', idade: 25);
  print(pessoa_01.nome);
  print(pessoa_01.idade);
  pessoa_01.comer();

  // Mas e se o objeto for nulo?
  Pessoa? pessoa_02;

  // Acessando o atributo nome do objeto pessoa_02
  // print(pessoa_02.nome); // Erro
  // O .toUpperCase() não precisa do operador null aware pois o atributo nome não é nulo
  print(pessoa_02?.nome.toUpperCase()); // Não dá erro
  print(pessoa_02?.idade); // Não dá erro
  // Verifica se o objeto pessoa_02 é nulo e se o atributo cidade não é nulo
  print(pessoa_02?.cidade?.toUpperCase()); // Não dá erro
  pessoa_02?.comer(); // Não dá erro
}

class Pessoa {
  // Construtor
  Pessoa({required this.nome, required this.idade});

  // Atributos
  String nome;
  int idade;

  String? cidade;

  // Métodos
  void comer() {
    print('Estou comendo...');
  }
}
