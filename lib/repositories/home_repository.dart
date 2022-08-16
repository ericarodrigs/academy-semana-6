import 'package:listagem_de_usuarios/interfaces/home_repository_interface.dart';
import 'package:listagem_de_usuarios/interfaces/http_client_interface.dart';
import 'package:listagem_de_usuarios/model/person_model.dart';

class HomeRepository implements IHomeRepository {
  final IHttpClient client;
  HomeRepository(this.client);

  @override
  Future<List<PersonModel>> getUsers() async {

    final List<PersonModel> people = [];
    final response = await client.get();

    if (response != null) {
      for (var person in response) {
        people.add(PersonModel.fromJson(person));
      }
    }

    return people;
  }
}
