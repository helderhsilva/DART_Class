void main() {
  // Funções podem retornar null. Para isso, é necessário especificar o tipo
  String? corpo = funcao(8) ?? 'Não informado';

  // Para acessar um atributo de um objeto que pode ser null, podemos:
  // 1. Verificar se o objeto não é null com um if;
  // 2. Usar o operador ?? (null aware operator) para atribuir um valor padrão ao corpo;
  // if (corpo != null) {
  print(corpo.toUpperCase());
  // }
}

// Detalhes sobre retornos de funções.

// String funcao() {
//   return 'Helder';
// }
// Isso é o mesmo que:
// Tipo nomeDaFuncao() => retorno;
// String funcao() => 'Helder';

// Se a função não retornar nada, o retorno é null.
// Para uma função retornar null, é necessário especificar o tipo.
String? funcao(int x) {
  if (x >= 10) {
    return 'O valor é maior ou igual a 10';
  }
  return null;
}
