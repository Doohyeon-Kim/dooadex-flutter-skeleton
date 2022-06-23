
import 'package:json_annotation/json_annotation.dart';

import '../../domain/models/user.dart';

part 'user_entity.g.dart';

@JsonSerializable()
class UserEntity extends User {

  @JsonKey(name: 'user_id')
  final String userId;
  final String email;
  final String nickname;

  UserEntity({required this.userId, required this.email, required this.nickname})
      : super(userId: userId, email: email, nickname: nickname);

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
