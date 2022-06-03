import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:dooadex_flutter_skeleton/services/error/error.dart';
import 'package:dooadex_flutter_skeleton/constants/http_constants.dart';
import 'package:dooadex_flutter_skeleton/utilities/logger.dart';

import '../../error/exception.dart';

class HttpUtil {
  static dynamic encodeRequestBody(dynamic data, String contentType) {
    return contentType == HttpConstants.jsonContentType ? utf8.encode(json.encode(data)) : data;
  }

  static void requestLogger({required String method, required Uri uri, Map? body}) {
    return logger.d("${DateTime.now()}\nRequest\nMethod: $method\nURL: $uri\nBody: $body");
  }

  static void responseLogger({required http.Response response}) {
    return logger.d("${DateTime.now()}\nResponse\nStatus Code: ${response.statusCode}\nBody: ${response.body}");
  }

  static void errorLogger({required int statusCode, required dynamic error}) {
    return logger.e(
        "${DateTime.now()}\nError\nStatus Code: $statusCode\nError Type: ${error.type}\nError Message: ${error.message}\nError message for user [${error.title}: ${error.detail}]");
  }

  static dynamic getResponse(http.Response response) {
    final dynamic responseJson = jsonDecode(utf8.decode(response.bodyBytes));
    final DooadexError? dooadexError;

    switch (response.statusCode) {
      case 200: // OK
      case 201: // Created
        DooadexLogger.apiResponse(statusCode: response.statusCode, body: response.body);
        return responseJson['data'];
      case 204: // No Content
        DooadexLogger.apiResponse(statusCode: response.statusCode, body: response.body);
        break;
      case 400: // Bad Request
        dooadexError = DooadexError.badRequest(
            type: responseJson['error']['type'],
            message: responseJson['error']['message'],
            title: responseJson['error']['error_user_title'],
            detail: responseJson['error']['error_user_msg']);
        throw DooadexApiException(statusCode: response.statusCode, dooadexError: dooadexError);
      case 401: // Unauthorized
        dooadexError = DooadexError.unauthorized(
            type: responseJson['error']['type'],
            message: responseJson['error']['message'],
            title: responseJson['error']['error_user_title'],
            detail: responseJson['error']['error_user_msg']);
        throw DooadexApiException(statusCode: response.statusCode, dooadexError: dooadexError);

      case 403: // Forbidden
        dooadexError = DooadexError.forbidden(
            type: responseJson['error']['type'],
            message: responseJson['error']['message'],
            title: responseJson['error']['error_user_title'],
            detail: responseJson['error']['error_user_msg']);
        throw DooadexApiException(statusCode: response.statusCode, dooadexError: dooadexError);

      case 404: // Not Found
        dooadexError = DooadexError.notFound(
            type: responseJson['error']['type'],
            message: responseJson['error']['message'],
            title: responseJson['error']['error_user_title'],
            detail: responseJson['error']['error_user_msg']);
        throw DooadexApiException(statusCode: response.statusCode, dooadexError: dooadexError);

      case 500: // Internal Server Error
        dooadexError = DooadexError.internalServerError(
            type: responseJson['error']['type'],
            message: responseJson['error']['message'],
            title: responseJson['error']['error_user_title'],
            detail: responseJson['error']['error_user_msg']);
        throw DooadexApiException(statusCode: response.statusCode, dooadexError: dooadexError);

      default:
        dooadexError = DooadexError.unknownError();
        throw DooadexApiException(statusCode: response.statusCode, dooadexError: dooadexError);
    }
  }
}
