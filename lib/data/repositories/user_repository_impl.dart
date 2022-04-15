import 'package:dooadex_flutter_skeleton/data/data_sources/local/user_local_data_source.dart';
import 'package:dooadex_flutter_skeleton/data/data_sources/remote/user_remote_data_sources.dart';
import 'package:dooadex_flutter_skeleton/data/entities/user_entity.dart';
import 'package:dooadex_flutter_skeleton/domain/repositories/user_repository.dart';
import 'package:dooadex_flutter_skeleton/services/network/connectivity.dart';


class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _remoteDataSource = UserRemoteDataSource();
  final UserLocalDataSource _localDataSource = UserLocalDataSource();

  @override
  Future<UserEntity> getUser({required String name}) async {

    if (await ConnectivityManager.networkConnected()) {
      final UserEntity user = await _remoteDataSource.getUser(name: name);
      await _localDataSource.cacheUser(userToCache: user);
      return user;
    } else {
      return await _localDataSource.getCachedUser();
    }
  }
}
