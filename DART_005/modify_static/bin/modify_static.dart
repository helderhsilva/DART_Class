// Modificador de acesso static
// Ele permite que você acesse um atributo ou método sem precisar instanciar um objeto
// É útil quando quer configurar um valor padrão para todos os objetos de uma classe

void main() {
  Pessoa.alturaPadrao = 1.80;

  Pessoa pessoa_01 = Pessoa(nome: 'Helder', idade: 25);

  // Atributo static - Acessando o atributo sem instanciar um objeto
  Pessoa.atributoStatic = 'XYZ';
  print(Pessoa.atributoStatic);

  // Método static - Acessando o método sem instanciar um objeto
  Pessoa.metodoStatic();
  print(pessoa_01.altura);
}

class Pessoa {
  // Construtor
  Pessoa({required this.nome, required this.idade});

  // Atributos
  String nome;
  int idade;
  double altura = alturaPadrao;

  // Atributo static
  static String atributoStatic = 'ABC';
  static double alturaPadrao = 1.70;

  // Método static
  // Método static não pode acessar atributos não static, pois ele não sabe a qual objeto pertence
  static void metodoStatic() {
    print('Método static retorna o atributo static: $atributoStatic');
  }
}
