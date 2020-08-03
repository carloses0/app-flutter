import 'package:app/models/person.dart';
import 'package:app/util/connection/response.dart';

abstract class FireBaseAuthService{
  Future<Response> savePerson(Person person);

  Future<Response> loginByGoogle(Person person);

  Future<Response> createAuth(Person person);

  Future<Response> getUserByEmail(String email);
}
