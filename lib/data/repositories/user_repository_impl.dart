import 'package:dooadex_flutter_skeleton/data/data_sources/remote/user_remote_data_source.dart';
import 'package:dooadex_flutter_skeleton/data/entities/sign_up_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../entities/user_entity.dart';

class UserRepositoryImpl implements UserRepository {

  final UserRemoteDataSource _remoteDataSource = UserRemoteDataSource();

  @override
  Future<void> createUser({required SignUpEntity signUpEntity}) async {
    final UserEntity user = await _remoteDataSource.createUser(signUpEntity: signUpEntity);
  }

  @override
  Future<void> getUser({required String userId}) {
    // TODO: implement getUser
    throw UnimplementedError();
  }
// final UserRemoteDataSource _remoteDataSource = UserRemoteDataSource();
// @override
// Future<UserEntity> getUser({required String name}) async {
//   final UserEntity user = await _remoteDataSource.getUser(name: name);
//   return user;
// }


}
