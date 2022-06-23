import 'package:dooadex_flutter_skeleton/data/entities/sign_up_entity.dart';
import 'package:dooadex_flutter_skeleton/data/repositories/user_repository_impl.dart';
import 'package:dooadex_flutter_skeleton/domain/repositories/user_repository.dart';
import 'package:dooadex_logger/dooadex_logger.dart';

class SignUp {
  final UserRepository _userRepository = UserRepositoryImpl();
  static SignUpEntity signUpEntity = SignUpEntity();

  Future<void> call({required SignUpEntity signUpEntity}) async {
    return await _userRepository.createUser(signUpEntity: signUpEntity);
  }

  void setSignUpEntity(
      {required String email,
      required String password,
      required String nickname}) {
    signUpEntity.email = email;
    signUpEntity.password = password;
    signUpEntity.nickname = nickname;
  }

  void printSignUpUserEntity() {
    DooadexLogger(
        "email: ${signUpEntity.email}\npassword: ${signUpEntity.password}\nnickname: ${signUpEntity.nickname}");
  }
}
