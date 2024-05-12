import 'package:http/http.dart' as http;

Future<void> solicitaDadosAluno() async {
  // URL para a qual faremos a requisição POST
  String url = 'https://visao.ifg.edu.br/consulta/alunos.php';

  // Dados que serão enviados no corpo da requisição
  Map<String, String> dados = {
    'token': 'Kp9Rm3oLbA5q',
    'matricula': '20211030180322',
  };

  // Fazendo a requisição POST
  try {
    http.Response response = await http.post(
      Uri.parse(url),
      body: dados,
    );

    // Verificando se a requisição foi bem sucedida
    if (response.statusCode == 200) {
      print('Requisição bem sucedida!');
      print('Corpo da resposta:');
      print(response.body);
    } else {
      print('Falha na requisição: ${response.statusCode}');
    }
  } catch (e) {
    print('Erro durante a requisição: $e');
  }
}