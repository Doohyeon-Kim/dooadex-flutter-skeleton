import '../../constants/exception_constants.dart';

class ErrorType {
  // Client Error
  static String invalidFormat = ExceptionConstants.invalidFormat;

  // Server Error;
  static String badRequest = ExceptionConstants.badRequest; // 400
  static String unauthorized = ExceptionConstants.unauthorized; // 401
  static String forbidden = ExceptionConstants.forbidden; // 403
  static String notFound = ExceptionConstants.notFound; // 404
  static String internalServerError = ExceptionConstants.internalServerError; // 500
  static String timeoutError = ExceptionConstants.timeoutError;
  static String unstableNetwork = ExceptionConstants.unstableNetwork;

  // UnknownError
  static String unknownError = 'UNKNOWN_ERROR';
}

