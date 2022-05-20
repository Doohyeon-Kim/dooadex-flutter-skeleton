import 'package:intl/intl.dart';

class Parser {
  String toPhoneNumber({required String phoneNumber}) {
    return phoneNumber.replaceAllMapped(RegExp(r"(\d{4})(\d{4})$"), (m) => '010-${m[1]}-${m[2]}');
  }

  DateTime toBirthDateTime({required String stringDateTime}) {
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
