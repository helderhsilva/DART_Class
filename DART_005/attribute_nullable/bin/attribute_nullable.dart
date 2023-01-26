// Como tratar valores nullables em atributos de uma classe

void main() {
  Pessoa pessoa_01 = Pessoa(nome: 'Helder', idade: 25);
  Pessoa pessoa_02 = Pessoa(nome: 'Maria', idade: 27, casado: true);

  // Aqui usammos um setter para modificar o atributo dinheiro
  pessoa_01.dinheiro = 300;
  pessoa_02.dinheiro = 200000000;

  // Aqui usamos um getter para retornar o atributo dinheiro
  // Cada vez que chamamos o getter, ele pode ter o valor completamente alterado

  // Quando tratamos de atributos e getters da classe, você não pode assumir que o segundo valor que será lido é exatamente igual ao primeiro valor.
  // Isso vale para nulo também
  //if (pessoa_01.dinheiro > 150) {
  // print(pessoa_01.dinheiro);
  //}

  // Foi verificado que o nome secreto não é nulo
  // Mas quando ele pediu para ler o nome secreto pela segunda vez, ele retornou null
  // Caso, na segunda leitura do nome secreto, tentasse acessar o método toUpperCase, o programa iria quebrar
  //if (pessoa_01.nome_secreto != null) {
  //  print(pessoa_01.nome_secreto);
  //}

  // Então qual a forma correta de tratar valores nulos?
  // Devemos copiar a variável para uma váriavel auxiliar e utilizar essa variável auxiliar para fazer as verificações
  String? nome = pessoa_01.nome_secreto;
  if (nome != null) {
    print(nome.toUpperCase());
  }

  // Quando se tem certeza que é um atriuto e não um getter
  // É possível utilizar o operador ! para dizer que o atributo não é nulo
  if (pessoa_01.atributo != null) {
    print(pessoa_01.atributo!.toUpperCase());
  }

  // Portanto, sempre que você atributos de objetos,
  // esses atributos podem mudar a vontade cada vez que são lidos sem você fazer nada.
  // Então se precisar fazer alguma verificação, copie o valor para uma variável auxiliar e faça as verificações nessa variável auxiliar
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

  // Imagine que esse atributo não pode ser nulo
  double _dinheiro = 0;

  // Exemplo: Suponha um nome secreto
  String? _nomeSecreto = 'Flutter';

  String? atributo = 'Olá';

  // A primeira vez que o getter é chamado, ele retorna o nome secreto
  // Depois disso, ele retorna null
  get nome_secreto {
    String? nome = _nomeSecreto;
    if (nome != null) {
      _nomeSecreto = null;
      return nome;
    } else {
      return null;
    }
  }

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

  // Setters
  set dinheiro(double valor) {
    if (valor >= 0 && valor < 1000000) {
      print('Modficando o dinheiro do $nome');
      _dinheiro = valor;
    } else {
      print('Valor inválido!');
    }
  }

  // Getters
  double get dinheiro {
    print('Retornando o dinheiro do $nome');
    // Suponha que toda vez que o getter é chamado, o valor do atributo é alterado
    _dinheiro -= 100;
    return _dinheiro;
  }
}
