// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DooadexError _$DooadexErrorFromJson(Map<String, dynamic> json) => DooadexError(
      type: json['type'] as String?,
      message: json['message'] as String?,
      title: json['title'] as String?,
      detail: json['detail'] as String?,
    );

Map<String, dynamic> _$DooadexErrorToJson(DooadexError instance) =>
    <String, dynamic>{
      'type': instance.type,
      'message': instance.message,
      'title': instance.title,
      'detail': instance.detail,
    };
