// Para converter uma string JSON em um objeto Dart, use o método jsonDecode() da biblioteca dart:convert.
import 'dart:convert';

void main() {
  Map<String, dynamic> dados = json.decode(dadosDoUsuario());

  // Imprimindo o nome do usuário
  print(dados['nome']);

  // Imprimindo o nome do curso de Flutter
  print(dados['cursos'][2]['nome']);

  // Imprimindo o nível do curso de Dart
  print(dados['cursos'][1]['nivel']);

  // Imprimindo o estado do usuário
  print(dados['endereço']['estado']);
}

String dadosDoUsuario() {
  return """
{
	"nome": "Helder",
	"sobrenome": "Henrique",
	"idade": 25,
	"casado": true,
	"altura": 1.7,
	"cursos": [
		{
			"nome": "Python",
			"nivel": "Básico"
		},
		{
			"nome": "Dart",
			"nivel": "Intermediário"
		},
		{
			"nome": "Flutter",
			"nivel": "Avançado"
		}
	],
	"endereço": {
		"rua": "Rua dos Bobos",
		"numero": 0,
		"bairro": "Centro",
		"cidade": "São Paulo",
		"estado": "SP"
	}
}
""";
}
