// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      userId: json['user_id'] as String,
      email: json['email'] as String,
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'email': instance.email,
      'nickname': instance.nickname,
    };
