
import '../../../data/repositories/user_repository_impl.dart';
import '../../models/user.dart';
import '../../repositories/user_repository.dart';

class GetUserInfo{
  final UserRepository _userRepository = UserRepositoryImpl();
  Future<User> call({required String name}) async {
    return await _userRepository.getUser(name: name);
  }
}