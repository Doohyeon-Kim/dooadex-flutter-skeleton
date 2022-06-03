import 'error_type.dart';

import 'package:json_annotation/json_annotation.dart';

part 'error.g.dart';

@JsonSerializable()
class DooadexError extends Error {
  String? type;
  String? message;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'detail')
  String? detail;

  DooadexError({required this.type, required this.message, required this.title, required this.detail});

  factory DooadexError.fromJson(Map<String, dynamic> json) => _$DooadexErrorFromJson(json);

  Map<String, dynamic> toJson() => _$DooadexErrorToJson(this);

  factory DooadexError.badRequest({String? type, String? message, String? title, String? detail}) = _BadRequest;

  factory DooadexError.unauthorized({String? type, String? message, String? title, String? detail}) = _Unauthorized;

  factory DooadexError.forbidden({String? type, String? message, String? title, String? detail}) = _Forbidden;

  factory DooadexError.notFound({String? type, String? message, String? title, String? detail}) = _NotFound;

  factory DooadexError.internalServerError({String? type, String? message, String? title, String? detail}) =
      _InternalServerError;

  factory DooadexError.unknownError({String? type, String? message, String? title, String? detail}) = _UnknownError;

  factory DooadexError.timeoutError({String? type, String? message, String? title, String? detail}) = _TimeoutError;

  factory DooadexError.unstableNetwork({String? type, String? message, String? title, String? detail}) =
      _UnstableNetwork;
}

class _BadRequest extends DooadexError {
  _BadRequest({String? type, String? message, String? title, String? detail})
      : super(type: type ?? ErrorType.badRequest, message: message ?? '', title: title ?? '', detail: detail ?? '');
}

class _Unauthorized extends DooadexError {
  _Unauthorized({String? type, String? message, String? title, String? detail})
      : super(type: type ?? ErrorType.unauthorized, message: message ?? '', title: title ?? '', detail: detail ?? '');
}

class _Forbidden extends DooadexError {
  _Forbidden({String? type, String? message, String? title, String? detail})
      : super(type: type ?? ErrorType.forbidden, message: message ?? '', title: title ?? '', detail: detail ?? '');
}

class _NotFound extends DooadexError {
  _NotFound({String? type, String? message, String? title, String? detail})
      : super(type: type ?? ErrorType.notFound, message: message ?? '', title: title ?? '', detail: detail ?? '');
}

class _InternalServerError extends DooadexError {
  _InternalServerError({String? type, String? message, String? title, String? detail})
      : super(
            type: type ?? ErrorType.internalServerError,
            message: message ?? '',
            title: title ?? '',
            detail: detail ?? '');
}

class _UnknownError extends DooadexError {
  _UnknownError({String? type, String? message, String? title, String? detail})
      : super(
            type: type ?? ErrorType.unknownError,
            message: message ?? 'Unknown Error',
            title: title ?? '알 수 없는 오류',
            detail: detail ?? '알 수 없는 오류가 발생했습니다.\n잠시 후 다시 시도해주세요.');
}

class _TimeoutError extends DooadexError {
  _TimeoutError({String? type, String? message, String? title, String? detail})
      : super(
            type: type ?? ErrorType.timeoutError,
            message: message ?? 'Timeout Error',
            title: title ?? "네트워크 연결 시간 초과",
            detail: detail ?? "네트워크 연결 시간이 초과되었습니다.\n잠시 후 다시 시도해주세요.");
}

class _UnstableNetwork extends DooadexError {
  _UnstableNetwork({String? type, String? message, String? title, String? detail})
      : super(
            type: type ?? ErrorType.unstableNetwork,
            message: message ?? 'Unstable Network',
            title: title ?? "불안정한 네트워크 환경",
            detail: detail ?? "네트워크 환경이 불안정 합니다.\n잠시 후 다시 시도해주세요.");
}
