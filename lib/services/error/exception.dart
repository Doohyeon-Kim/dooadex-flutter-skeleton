import '../../utilities/logger.dart';
import 'error.dart';
import 'error_message_handler.dart';

class DooadexException implements Exception {
  DooadexException(this.message);

  final String? message;

  @override
  String toString() {
    return "DooadexException: $message";
  }

  void logger(DooadexError dooadexError) {
    DooadexLogger.exception(dooadexError);
  }
}

class DooadexApiException extends DooadexException {
  final DooadexError dooadexError;

  DooadexApiException({required int statusCode, required this.dooadexError})
      : super(dooadexError.message) {
    ErrorMessageHandler.setErrorMessage(dooadexError: dooadexError);
    DooadexLogger.apiResponseError(
        statusCode: statusCode, dooadexError: dooadexError);
  }
}

class DooadexNetworkException extends DooadexException {
  final DooadexError dooadexError;

  DooadexNetworkException({required this.dooadexError})
      : super(dooadexError.message) {
    ErrorMessageHandler.setErrorMessage(dooadexError: dooadexError);
    DooadexLogger.exception(dooadexError);
  }
}

class DooadexClientException extends DooadexException {
  final DooadexError dooadexError;

  DooadexClientException({required this.dooadexError})
      : super(dooadexError.message) {
    ErrorMessageHandler.setErrorMessage(dooadexError: dooadexError);
    DooadexLogger.exception(dooadexError);
  }
}
