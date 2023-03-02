// Passagem de referência
// É possível passar uma referência de um objeto para outro objeto.
// Pensando em memória, o objeto pessoa_01 está em um endereco de memória e o objeto pessoa_02 está em outro endereço de memória.

void main() {
  Pessoa pessoa_01 = Pessoa(nome: 'Helder', idade: 25);
  print(pessoa_01.nome);
  print(pessoa_01.idade);

  // Passagem de referência para pessoa_02.
  // Nesse caso pessoa_02 está apontando para o mesmo endereço de memória que pessoa_01.
  Pessoa pessoa_02 = pessoa_01;

  // Se acessarmos o atributo nome de pessoa_02, o valor retornado será o mesmo de pessoa_01.
  // E se alterarmos o valor de pessoa_02, o valor de pessoa_01 também será alterado.
  print(pessoa_02.nome);
  print(pessoa_02.idade);
  pessoa_01.nome = 'Helder Santos';
  print(pessoa_02.nome);
  pessoa_02.idade = 26;
  print(pessoa_01.idade);

  // Quando criamos um novo objeto, ele é alocado em um novo endereço de memória.
  Pessoa pessoa_03 = Pessoa(nome: 'João', idade: 29);

  print(pessoa_03.idade);
  funcao(pessoa_03);
  print(pessoa_03.idade);

  // Variáveis primitivas: serão passadas por cópia.
  int numero = 10;
  funcao2(numero);
  print(numero);
}

// Função que recebe um objeto do tipo Pessoa.
// Quando passamos um objeto para uma função, estamos passando uma referência para o objeto.
void funcao(Pessoa pessoa) {
  pessoa.idade++;
}

// Quando passamos variáveis primitivas para uma função, estamos passando uma cópia do valor.
// Dessa forma, se alterarmos o valor da variável dentro da função, o valor da variável fora da função não será alterado.
void funcao2(int x) {
  x = 20;
}

class Pessoa {
  // Construtor
  Pessoa({required this.nome, required this.idade});

  // Atributos
  String nome;
  int idade;
}
