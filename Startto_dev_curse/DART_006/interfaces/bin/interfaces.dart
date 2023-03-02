// Interfaces servem para desacoplar componentes de um sistema.
// Uma interface é um contrato que define o que um objeto deve fazer.

void main() {
  // Podemos mudar a implementação da interface sem alterar o código.
  RepositorioPessoas repositorio = RepositorioPessoasRemote();
  repositorio.ler(3);
  repositorio.adicionar('Henrique');
  repositorio.apagar(3);
}

// Uma interface é um contrato que define o que um objeto deve fazer.
// Uma interface é um conjunto de métodos que uma classe deve implementar.
abstract class RepositorioPessoas {
  String ler(int i);
  void adicionar(String nome);
  void apagar(int i);
}

class RepositorioPessoasRemote implements RepositorioPessoas {
  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int i) {
    // TODO: implement apagar
  }

  @override
  String ler(int i) {
    return 'Helder';
  }
}

class RepositorioPessoasLocal implements RepositorioPessoas {
  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int i) {
    // TODO: implement apagar
  }

  @override
  String ler(int i) {
    return 'Helder';
  }
}
