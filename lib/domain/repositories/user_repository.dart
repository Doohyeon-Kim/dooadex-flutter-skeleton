import 'package:dooadex_flutter_skeleton/data/entities/sign_up_entity.dart';
abstract class UserRepository {
  UserRepository._();

  Future<void> getUser({required String userId});

  Future<void> createUser({required SignUpEntity signUpEntity});
}
