import 'package:intl/intl.dart';

class DateFormatHandler {
  DateFormatHandler._();

  static bool checkCurrentDateHasPassed(DateTime dateTime) {
    if (DateTime.now().isAfter(dateTime)) {
      return false;
    } else {
      throw ("현재 날짜보다 미래입니다.");
    }
  }

  static String formatStringDateTime({required stringDateTime}) {
    String year = stringDateTime.substring(0, 4);
    String month = stringDateTime.substring(4, 6);
    String day = stringDateTime.substring(6, 8);
    String formattedStringDateTime = year + "-" + month + "-" + day;
    return formattedStringDateTime;
  }

  static DateTime parseToDateTime({
    required String stringDateTime,
  }) {
    try {
      return DateFormat("yyyy-MM-dd")
          .parseStrict(formatStringDateTime(stringDateTime: stringDateTime));
    } catch (e) {
      rethrow;
    }
  }
}
