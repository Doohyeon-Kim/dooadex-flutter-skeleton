
import 'package:dooadex_flutter_skeleton/data/data_sources/remote/test_user_remote_data_source.dart';
import 'package:dooadex_flutter_skeleton/data/entities/test_user_entity.dart';
import 'package:dooadex_flutter_skeleton/domain/repositories/test_user_repository.dart';


class TestUserRepositoryImpl implements TestUserRepository {
  final TestUserRemoteDataSource _remoteDataSource = TestUserRemoteDataSource();
  @override
  Future<TestUserEntity> getUser({required String name}) async {
      final TestUserEntity user = await _remoteDataSource.getUser(name: name);
      return user;
  }
}
