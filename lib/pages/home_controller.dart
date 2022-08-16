import 'package:listagem_de_usuarios/interfaces/home_repository_interface.dart';
import 'package:listagem_de_usuarios/model/person_model.dart';

class HomeController {
  final IHomeRepository repository;

  HomeController(this.repository);

  Future<List<PersonModel>> getData() async => await repository.getUsers();
}
