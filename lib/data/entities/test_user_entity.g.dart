// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestUserEntity _$TestUserEntityFromJson(Map<String, dynamic> json) =>
    TestUserEntity(
      id: json['count'] as int,
      name: json['name'] as String,
      age: json['age'] as int,
    );

Map<String, dynamic> _$TestUserEntityToJson(TestUserEntity instance) =>
    <String, dynamic>{
      'count': instance.id,
      'name': instance.name,
      'age': instance.age,
    };
