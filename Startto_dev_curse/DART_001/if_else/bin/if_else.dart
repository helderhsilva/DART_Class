void main() {
  double nota = 4;
  double exame = 8;

  //if (nota >= 5.0) {
  //  print('Aprovado!');
  //} else if (nota >= 3.5) {
  //  print('exame');
  //  if (exame >= 7.0) {
  //   print('Aprovado no Exame!');
  //  } else {
  //    print('Reprovado no Exame!');
  //  }
  //} else {
  //  print('Reprovado!');
  // }

  if (nota >= 5.0) {
    print('Aprovado!');
  } else if (nota >= 3.5 && exame >= 7.0) {
    print('Aprovado no Exame!');
  } else if (nota >= 5.0) {
    print('Reprovado no Exame!');
  } else {
    print('Reprovado!');
  }
}
