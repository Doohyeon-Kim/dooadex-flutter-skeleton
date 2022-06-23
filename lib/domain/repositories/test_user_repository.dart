import 'package:dooadex_flutter_skeleton/domain/models/test_user.dart';

abstract class TestUserRepository {
  TestUserRepository._();

  Future<TestUser> getUser({required String name});
}
