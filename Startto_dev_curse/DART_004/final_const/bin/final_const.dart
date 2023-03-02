// Const é uma palavra reservada que define uma constante
// Ele pode ser usado para definir constantes em tempo de compilação.

// Final é uma palavra reservada que define uma constante
// A diferença entre const e final é que const é definido em tempo de compilação
// e final é definido em tempo de execução

// Compilação é o processo de transformar o código fonte em código de máquina
// Execução é o processo de executar o código de máquina.

void main() {
  // Exemplo para const. Os valores não podem ser alterados.
  // O tipo da variável é opcional.
  const nome = 'João';
  const pi = 3.14;
  const nomes = ['João', 'Maria', 'José'];

  // Exemplo para final. Os valores não podem ser alterados.
  // O tipo da variável é opcional.
  final DateTime data = DateTime.now();

  // Final pode ser definido sem valor inicial.
  // O valor só pode ser definido uma vez.
  final String sobrenome;

  if (nome == 'João') {
    sobrenome = 'Silva';
  } else {
    sobrenome = 'Santos';
  }

  print('Nome: $nome $sobrenome');
  print('Pi: $pi');
  print('Nomes: $nomes');
  print('Data: $data');
}
