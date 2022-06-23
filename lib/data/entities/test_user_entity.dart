import 'package:dooadex_flutter_skeleton/domain/models/test_user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'test_user_entity.g.dart';

@JsonSerializable()
class TestUserEntity extends TestUser {

  @JsonKey(name: 'count')
  int id;
  String name;
  int age;

  TestUserEntity({required this.id, required this.name, required this.age})
      : super(id: id, name: name, age: age);

  factory TestUserEntity.fromJson(Map<String, dynamic> json) =>
      _$TestUserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$TestUserEntityToJson(this);
}