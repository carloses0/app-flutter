
import 'package:http/http.dart';

abstract class ImdbService{
  Future<Response> searchBy(dynamic type);
}
