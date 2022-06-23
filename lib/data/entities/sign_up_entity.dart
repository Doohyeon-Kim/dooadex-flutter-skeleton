
import 'package:json_annotation/json_annotation.dart';
part 'sign_up_entity.g.dart';

@JsonSerializable()
class SignUpEntity {
  String? email;
  String? password;
  String? nickname;

  SignUpEntity({this.email, this.password, this.nickname});

  factory SignUpEntity.fromJson(Map<String, dynamic> json) => _$SignUpEntityFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpEntityToJson(this);
}
