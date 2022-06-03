import 'dart:convert';

import 'package:dooadex_flutter_skeleton/data/entities/user_entity.dart';
import 'package:dooadex_flutter_skeleton/services/native_api/secure_storage.dart';

import '../../../services/error/error.dart';
import '../../../services/error/exception.dart';

const _cachedUser = "CACHED_USER";

class UserLocalDataSource {
  Future<void> cacheUser({required UserEntity userToCache}) async {
    await SecureStorage.write(
        key: _cachedUser, value: jsonEncode(userToCache.toJson()));
  }

  Future<UserEntity> getCachedUser() async {
    final user = await SecureStorage.read(key: _cachedUser);
    if (user != null) {
      return UserEntity.fromJson(jsonDecode(user.toString()));
    } else {
      throw DooadexNetworkException(dooadexError: DooadexError.unstableNetwork());
    }
  }
}
