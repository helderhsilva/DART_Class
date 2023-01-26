// Modificador de acesso late
// Ele ajuda a trabalhar com o null safety
// Ele permite que você declare um atributo sem inicializar

void main() {
  Pessoa pessoa_01 = Pessoa(nome: 'Helder', idade: 25);

  // Atributo late, incializado antes de ser usado
  pessoa_01.cpf = '123.456.789-00';
  print(pessoa_01.cpf);
  print(pessoa_01.temperatura);
  print(pessoa_01.temperatura);
}

class Pessoa {
  // Construtor
  Pessoa({required this.nome, required this.idade});

  // Atributos
  String nome;
  int idade;

  // Não faz sentido ter um valor nulo. Por isso, usamos o late que significa "depois"
  // A variável deve ser inicializada sempre antes de ser usada
  // Se acessar a variável antes de inicializar, vai dar erro
  // Usar late, evita ter que fazer a verificação de null
  late String cpf;

  // Inicialização lazy (Preguiçosa)
  // Só é feita quando relamente for necessário
  // É útil quando o valor é pesado de ser calculado

  late double temperatura = medirTemperatura();

  // Método
  double medirTemperatura() {
    print('Medindo a temperatura...');
    return 36.5;
  }
}
