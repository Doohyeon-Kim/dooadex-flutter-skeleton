// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DooadexError _$DooadexErrorFromJson(Map<String, dynamic> json) => DooadexError(
      type: json['type'] as String?,
      message: json['message'] as String?,
      title: json['error_user_title'] as String?,
      detail: json['error_user_msg'] as String?,
    );

Map<String, dynamic> _$DooadexErrorToJson(DooadexError instance) =>
    <String, dynamic>{
      'type': instance.type,
      'message': instance.message,
      'error_user_title': instance.title,
      'error_user_msg': instance.detail,
    };
