import 'package:listagem_de_usuarios/model/person_model.dart';

abstract class IHomeRepository {
  Future<List<PersonModel>> getUsers();
}
