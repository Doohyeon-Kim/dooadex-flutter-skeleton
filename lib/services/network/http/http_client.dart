import 'dart:async';
import 'dart:convert';

import 'package:dooadex_flutter_skeleton/constants/http_constants.dart';
import 'package:dooadex_flutter_skeleton/utilities/logger.dart';
import 'package:http/http.dart' as http;

import '../../../configs/app_config.dart';
import '../../error/exception.dart';
import '../../error/error.dart';
import 'http_utils.dart';

class HttpClient {
  HttpClient._();

  String? host;

  static Map<String, String> _generateBaseHeaders() {
    final Map<String, String> baseHeaders = {
      'Content-Type': HttpConstants.jsonContentType,
    };
    return baseHeaders;
  }

  static Map<String, String> _generateAuthorizationHeader(String token) {
    final Map<String, String> authorizationHeader = {
      'Authorization': "${HttpConstants.bearerTokenType} $token"
    };
    return authorizationHeader;
  }

  static Map<String, String> _generateRequestHeaders({String? token}) {
    final Map<String, String> headers = _generateBaseHeaders();
    if (token != null) {
      headers.addAll(_generateAuthorizationHeader(token));
    }
    return headers;
  }

  static Uri _getParsedUrl({required String urlAddress}) {
    return Uri.parse(urlAddress);
  }

  static Future<dynamic> get(
      {required String urlAddress, String? token}) async {
    final Uri parsedUri = _getParsedUrl(urlAddress: urlAddress);
    DooadexLogger.apiRequest(method: HttpConstants.get, uri: parsedUri);
    try {
      final http.Response response = await http
          .get(parsedUri, headers: _generateRequestHeaders(token: token))
          .timeout(networkTimeOutLimit);
      return HttpUtil.getResponse(response);
    } on TimeoutException {
      DooadexError dooadexError = TimeoutError();
      DooadexNetworkException(dooadexError: dooadexError);
    } on DooadexApiException {
      rethrow;
    }
  }

  static Future<dynamic> post(
      {required String urlAddress,
      required Map<String, dynamic> body,
      String? token}) async {
    final Uri parsedUri = _getParsedUrl(urlAddress: urlAddress);

    DooadexLogger.apiRequest(
        method: HttpConstants.post, uri: parsedUri, body: body);
    try {
      final http.Response response = await http
          .post(parsedUri,
              headers: _generateRequestHeaders(token: token),
              body: jsonEncode(body))
          .timeout(networkTimeOutLimit);
      return HttpUtil.getResponse(response);
    } on TimeoutException {
      DooadexError dooadexError = TimeoutError();
      DooadexNetworkException(dooadexError: dooadexError);
    } on DooadexApiException {
      rethrow;
    }
  }

  static Future<dynamic> put(
      {required String urlAddress,
      required Map<String, dynamic> body,
      String? token}) async {
    final Uri parsedUri = _getParsedUrl(urlAddress: urlAddress);
    DooadexLogger.apiRequest(
        method: HttpConstants.put, uri: parsedUri, body: body);
    try {
      final http.Response response = await http
          .put(parsedUri,
              headers: _generateRequestHeaders(token: token),
              body: jsonEncode(body))
          .timeout(networkTimeOutLimit);
      return HttpUtil.getResponse(response);
    } on TimeoutException {
      DooadexError dooadexError = TimeoutError();
      DooadexNetworkException(dooadexError: dooadexError);
    } on DooadexApiException {
      rethrow;
    }
  }

  static Future<dynamic> delete(
      {required String urlAddress,
      required Map<String, dynamic> body,
      String? token}) async {
    final Uri parsedUri = _getParsedUrl(urlAddress: urlAddress);
    DooadexLogger.apiRequest(
        method: HttpConstants.delete, uri: parsedUri, body: body);
    try {
      final http.Response response = await http
          .delete(parsedUri,
              headers: _generateRequestHeaders(token: token),
              body: jsonEncode(body))
          .timeout(networkTimeOutLimit);
      return HttpUtil.getResponse(response);
    } on TimeoutException {
      DooadexError dooadexError = TimeoutError();
      DooadexNetworkException(dooadexError: dooadexError);
    } on DooadexApiException {
      rethrow;
    }
  }

  static Future<dynamic> patch(
      {required String urlAddress,
      required Map<String, dynamic> body,
      String? token}) async {
    final Uri parsedUri = _getParsedUrl(urlAddress: urlAddress);
    DooadexLogger.apiRequest(
        method: HttpConstants.patch, uri: parsedUri, body: body);
    try {
      final http.Response response = await http
          .patch(parsedUri,
              headers: _generateRequestHeaders(token: token),
              body: jsonEncode(body))
          .timeout(networkTimeOutLimit);
      return HttpUtil.getResponse(response);
    } on TimeoutException {
      DooadexError dooadexError = TimeoutError();
      DooadexNetworkException(dooadexError: dooadexError);
    } on DooadexApiException {
      rethrow;
    }
  }


  /// Below is to match free API for testing.
  static Future<dynamic> testGet(
      {required String urlAddress, String? token}) async {
    final Uri parsedUri = _getParsedUrl(urlAddress: urlAddress);
    DooadexLogger.apiRequest(method: HttpConstants.get, uri: parsedUri);
    try {
      final http.Response response = await http
          .get(parsedUri, headers: _generateRequestHeaders(token: token))
          .timeout(networkTimeOutLimit);
      final dynamic responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      final DooadexError? dooadexError;

      switch (response.statusCode) {
        case 200: // OK
        case 201: // Created
          DooadexLogger.apiResponse(
              statusCode: response.statusCode, body: response.body);
          return responseJson;
        default:
          dooadexError = UnknownError();
          throw DooadexApiException(
              statusCode: response.statusCode, dooadexError: dooadexError);
      }
    } on TimeoutException {
      DooadexError dooadexError = TimeoutError();
      DooadexNetworkException(dooadexError: dooadexError);
    } on DooadexApiException {
      rethrow;
    }
  }
}
