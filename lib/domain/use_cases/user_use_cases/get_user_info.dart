
import '../../../data/repositories/test_user_repository_impl.dart';
import '../../models/test_user.dart';
import '../../repositories/test_user_repository.dart';

class GetUserInfo{
  final TestUserRepository _userRepository = TestUserRepositoryImpl();
  Future<TestUser> call({required String name}) async {
    return await _userRepository.getUser(name: name);
  }
}