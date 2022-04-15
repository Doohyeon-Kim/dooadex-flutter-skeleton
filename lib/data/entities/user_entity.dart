import 'package:dooadex_flutter_skeleton/domain/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@JsonSerializable()
class UserEntity extends User {

  @JsonKey(name: 'count')
  int id;
  String name;
  int age;

  UserEntity({required this.id, required this.name, required this.age})
      : super(id: id, name: name, age: age);

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}