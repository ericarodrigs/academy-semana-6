import 'package:listagem_de_usuarios/interfaces/http_client_interface.dart';

class HttpClient implements IHttpClient {

  @override
  Future<dynamic> get() async {
    await Future.delayed(const Duration(seconds: 5));

    final response = [
      {
        "name": "Erica",
        "lastName": "Rodrigues",
        "age": 31,
        "nationality": "Brasileira",
        "occupation": "Desenvolvedora Flutter",
      },
      {
        "name": "Vania",
        "lastName": "Almeida",
        "age": 32,
        "nationality": "Brasileira",
        "occupation": "Desenvolvedora Android",
      },
      {
        "name": "Patricia",
        "lastName": "Costa",
        "age": 33,
        "nationality": "Brasileira",
        "occupation": "Consultora de Telemarketing",
      },
      {
        "name": "Sabrina",
        "lastName": "Gomes",
        "age": 31,
        "nationality": "Brasileira",
        "occupation": "Agente de Viagens",
      },
      {
        "name": "Daniel",
        "lastName": "Lopes",
        "age": 28,
        "nationality": "Brasileiro",
        "occupation": "Desenvolvedor Flutter",
      },
    ];
    return response;
  }
}
