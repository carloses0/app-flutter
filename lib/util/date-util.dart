import 'package:intl/intl.dart';

class DateUtil{
  static String formaterDate(String regex, DateTime dateTime){
    return DateFormat(regex).format(DateTime.parse(dateTime.toString()));
  }
}
