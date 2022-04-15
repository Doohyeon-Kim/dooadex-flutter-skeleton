import 'package:dooadex_flutter_skeleton/domain/models/user.dart';

abstract class UserRepository {
  UserRepository._();

  Future<User> getUser({required String name});
}
