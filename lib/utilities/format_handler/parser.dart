import 'package:intl/intl.dart';

class Parser {
  static String toPhoneNumber({required String phoneNumber}) {
    return phoneNumber.replaceAllMapped(phoneNumber, (m) => '${m[1]}-${m[2]}-${m[3]}');
  }

  static DateTime toBirthDateTime({required String stringDateTime}) {
    String year = stringDateTime.substring(0, 4);
    String month = stringDateTime.substring(4, 6);
    String day = stringDateTime.substring(6, 8);
    String formattedStringDateTime = year + "-" + month + "-" + day;
    try {
      return DateFormat("yyyy-MM-dd").parseStrict(formattedStringDateTime);
    } catch (e) {
      throw ("Invalid format.");
    }
  }
}
