// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpEntity _$SignUpEntityFromJson(Map<String, dynamic> json) => SignUpEntity(
      email: json['email'] as String?,
      password: json['password'] as String?,
      nickname: json['nickname'] as String?,
    );

Map<String, dynamic> _$SignUpEntityToJson(SignUpEntity instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'nickname': instance.nickname,
    };
