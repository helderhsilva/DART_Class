// O escopo de uma variável é o local onde ela pode ser acessada.
// Variáveis declaradas fora de uma função são globais e podem ser acessadas de qualquer lugar.
// Variáveis declaradas dentro de uma função são locais e só podem ser acessadas dentro da função.

// Variáveis globais
int a = 1;

void main() {
  // A variável a é global e pode ser acessada de qualquer lugar
  a = 10;

  // Escopo de uma função
  void funcao() {
    int b = 2;
    a = 50;

    print('Valores de a e b: dentro do escopo da função');
    print(b);
    print(a);

    void funcao2(int c) {
      // O valor de c é passado como parâmetro, mas a preferência é para a variável local
      int c = 35;
      a = 100;

      // A variável b é local e só pode ser acessada dentro da função
      b = 20;
      print('Valores de a, b e c: dentro do escopo da função 2');
      print(c);
      print(b);
      print(a);
    }

    funcao2(3);
  }

  funcao();
}
