import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:dooadex_flutter_skeleton/services/error/error.dart';
import 'package:dooadex_flutter_skeleton/constants/http_constants.dart';
import 'package:dooadex_flutter_skeleton/utilities/logger.dart';

import '../../error/exception.dart';

class HttpUtil {
  static dynamic encodeRequestBody(dynamic data, String contentType) {
    return contentType == HttpConstants.jsonContentType
        ? utf8.encode(json.encode(data))
        : data;
  }

  static void requestLogger(
      {required String method, required Uri uri, Map? body}) {
    return logger.d(
        "${DateTime.now()}\nRequest\nMethod: $method\nURL: $uri\nBody: $body");
  }

  static void responseLogger({required http.Response response}) {
    return logger.d(
        "${DateTime.now()}\nResponse\nStatus Code: ${response.statusCode}\nBody: ${response.body}");
  }

  static void errorLogger({required int statusCode, required dynamic error}) {
    return logger.e(
        "${DateTime.now()}\nError\nStatus Code: $statusCode\nError Type: ${error.type}\nError Message: ${error.message}\nError message for user [${error.errorUserTitle}: ${error.errorUserMsg}]");
  }

  static dynamic getResponse(http.Response response) {
    final dynamic responseJson = jsonDecode(utf8.decode(response.bodyBytes));
    final DooadexError? dooadexError;

    switch (response.statusCode) {
      case 200: // OK
      case 201: // Created
        DooadexLogger.apiResponse(
            statusCode: response.statusCode, body: response.body);
        return responseJson['data'];
      case 204: // No Content
        DooadexLogger.apiResponse(
            statusCode: response.statusCode, body: response.body);
        break;
      case 400: // Bad Request
        dooadexError = BadRequest(
            type: responseJson['error']['type'],
            message: responseJson['error']['message'],
            errorUserTitle: responseJson['error']['error_user_title'],
            errorUserMsg: responseJson['error']['error_user_msg']);
        throw DooadexApiException(
            statusCode: response.statusCode, dooadexError: dooadexError);
      case 401: // Unauthorized
        dooadexError = Unauthorized(
            type: responseJson['error']['type'],
            message: responseJson['error']['message'],
            errorUserTitle: responseJson['error']['error_user_title'],
            errorUserMsg: responseJson['error']['error_user_msg']);
        throw DooadexApiException(
            statusCode: response.statusCode, dooadexError: dooadexError);

      case 403: // Forbidden
        dooadexError = Forbidden(
            type: responseJson['error']['type'],
            message: responseJson['error']['message'],
            errorUserTitle: responseJson['error']['error_user_title'],
            errorUserMsg: responseJson['error']['error_user_msg']);
        throw DooadexApiException(
            statusCode: response.statusCode, dooadexError: dooadexError);

      case 404: // Not Found
        dooadexError = NotFound(
            type: responseJson['error']['type'],
            message: responseJson['error']['message'],
            errorUserTitle: responseJson['error']['error_user_title'],
            errorUserMsg: responseJson['error']['error_user_msg']);
        throw DooadexApiException(
            statusCode: response.statusCode, dooadexError: dooadexError);

      case 500: // Internal Server Error
        dooadexError = InternalServerError(
            type: responseJson['error']['type'],
            message: responseJson['error']['message'],
            errorUserTitle: responseJson['error']['error_user_title'],
            errorUserMsg: responseJson['error']['error_user_msg']);
        throw DooadexApiException(
            statusCode: response.statusCode, dooadexError: dooadexError);

      default:
        dooadexError = UnknownError();
        throw DooadexApiException(
            statusCode: response.statusCode, dooadexError: dooadexError);
    }
  }
}
