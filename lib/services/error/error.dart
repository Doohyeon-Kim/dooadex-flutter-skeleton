import 'error_type.dart';

import 'package:json_annotation/json_annotation.dart';

part 'error.g.dart';

@JsonSerializable()
class DooadexError extends Error {
  String? type;
  String? message;
  @JsonKey(name: 'error_user_title')
  String? errorUserTitle;
  @JsonKey(name: 'error_user_msg')
  String? errorUserMsg;

  DooadexError(
      {required this.type,
      required this.message,
      required this.errorUserTitle,
      required this.errorUserMsg});

  factory DooadexError.fromJson(Map<String, dynamic> json) =>
      _$DooadexErrorFromJson(json);

  Map<String, dynamic> toJson() => _$DooadexErrorToJson(this);
}

class BadRequest extends DooadexError {
  BadRequest({String? type, String? message, String? errorUserTitle, String? errorUserMsg})
      : super(
            type: type ?? ErrorType.badRequest,
            message: message ?? '',
            errorUserTitle: errorUserTitle ?? '',
            errorUserMsg: errorUserMsg ?? '');
}

class Unauthorized extends DooadexError {
  Unauthorized({String? type, String? message, String? errorUserTitle, String? errorUserMsg})
      : super(
            type: type ?? ErrorType.unauthorized,
            message: message ?? '',
            errorUserTitle: errorUserTitle ?? '',
            errorUserMsg: errorUserMsg ?? '');
}

class Forbidden extends DooadexError {
  Forbidden({String? type, String? message, String? errorUserTitle, String? errorUserMsg})
      : super(
            type: type ?? ErrorType.forbidden,
            message: message ?? '',
            errorUserTitle: errorUserTitle ?? '',
            errorUserMsg: errorUserMsg ?? '');
}

class NotFound extends DooadexError {
  NotFound({String? type, String? message, String? errorUserTitle, String? errorUserMsg})
      : super(
            type: type ?? ErrorType.notFound,
            message: message ?? '',
            errorUserTitle: errorUserTitle ?? '',
            errorUserMsg: errorUserMsg ?? '');
}

class InternalServerError extends DooadexError {
  InternalServerError(
      {String? type, String? message, String? errorUserTitle, String? errorUserMsg})
      : super(
            type: type ?? ErrorType.internalServerError,
            message: message ?? '',
            errorUserTitle: errorUserTitle ?? '',
            errorUserMsg: errorUserMsg ?? '');
}

class UnknownError extends DooadexError {
  UnknownError({String? type, String? message, String? errorUserTitle, String? errorUserMsg})
      : super(
            type: type ?? ErrorType.unknownError,
            message: message ?? 'Unknown Error',
            errorUserTitle: errorUserTitle ?? '알 수 없는 오류',
            errorUserMsg: errorUserMsg ?? '알 수 없는 오류가 발생했습니다.\n잠시 후 다시 시도해주세요.');
}

class TimeoutError extends DooadexError{
  TimeoutError({String? type, String? message, String? errorUserTitle, String? errorUserMsg})
      : super(
      type: type ?? ErrorType.timeoutError,
      message: message ?? 'Timeout Error',
      errorUserTitle: errorUserTitle ?? "네트워크 연결 시간 초과",
      errorUserMsg: errorUserMsg ?? "네트워크 연결 시간이 초과되었습니다.\n잠시 후 다시 시도해주세요.");
}

class UnstableNetwork extends DooadexError{
  UnstableNetwork({String? type, String? message, String? errorUserTitle, String? errorUserMsg})
      : super(
      type: type ?? ErrorType.timeoutError,
      message: message ?? 'Unstable Network',
      errorUserTitle: errorUserTitle ?? "불안정한 네트워크 환경",
      errorUserMsg: errorUserMsg ?? "네트워크 환경이 불안정 합니다.\n잠시 후 다시 시도해주세요.");
}