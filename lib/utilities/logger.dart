import 'package:logger/logger.dart';

import '../services/error/error.dart';

class DooadexLogger {
  DooadexLogger._();

  static void exception(DooadexError dooadexError) {
    Logger(printer: PrettyPrinter(methodCount: 15)).e(
        "${DateTime.now()}\nException: ${dooadexError.type}\nMessage: ${dooadexError.message}\nError message for user [${dooadexError.errorUserTitle}: ${dooadexError.errorUserMsg}]");
  }

  static void apiRequest(
      {required String method, required Uri uri, Map? body}) {
    Logger(printer: PrettyPrinter(methodCount: 0)).d(
        "${DateTime.now()}\nRequest\nMethod: $method\nURL: $uri\nBody: $body");
  }

  static void apiResponse({
    required int statusCode,
    required String body,
  }) {
    Logger(printer: PrettyPrinter(methodCount: 0)).d(
        "${DateTime.now()}\nResponse\nStatus Code: $statusCode\nBody: $body");
  }

  static void apiResponseError(
      {required int statusCode, required DooadexError dooadexError}) {
    Logger(printer: PrettyPrinter(methodCount: 20)).e(
      "${DateTime.now()}\nStatus Code: $statusCode\nError Type: ${dooadexError.type}\nError Message: ${dooadexError.message}\nError message for user [${dooadexError.errorUserTitle}: ${dooadexError.errorUserMsg}]",
    );
  }
}

Logger logger = Logger(printer: PrettyPrinter(methodCount: 0));
Logger logger3 = Logger(printer: PrettyPrinter(methodCount: 3));
Logger logger5 = Logger(printer: PrettyPrinter(methodCount: 5));
Logger logger7 = Logger(printer: PrettyPrinter(methodCount: 7));