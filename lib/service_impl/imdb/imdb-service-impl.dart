import 'package:app/service/imdb/imdb-service.dart';
import 'package:app/service/imdb/secret-key.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ImdbServiceImpl implements ImdbService {
  static var key = SecretKey.IMDB_KEY;
  static String _url = 'http://www.omdbapi.com/?apikey=$key&';

  // REQUIRED
  static const String SEARCH = 's=';

  // OPCIONAL
  static const String IMDB_ID = 'i=';
  static const String TITLE_MOVIE = 't=';
  static const String TYPE = 'type=';
  static const String YEAR = 'y=';

  // Return short or full plot
  static const String PLOT_SHORT = 'plot=short';
  static const String PLOT_FULL = 'plot=full';

  Future<Response> searchBy(dynamic type) async {
    var buffer = new StringBuffer();
//    buffer.write(ObjectUtil.isNoN(type.id) ? _url + '');
    return await http.get(_url);
  }


}
