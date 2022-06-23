import 'dart:convert';

import 'package:dooadex_error_handler/dooadex_error_handler.dart';
import 'package:dooadex_flutter_skeleton/data/entities/test_user_entity.dart';
import 'package:dooadex_flutter_skeleton/services/native_api/secure_storage.dart';


const _cachedUser = "CACHED_USER";

class UserLocalDataSource {
  Future<void> cacheUser({required TestUserEntity userToCache}) async {
    await SecureStorage.write(
        key: _cachedUser, value: jsonEncode(userToCache.toJson()));
  }

  Future<TestUserEntity> getCachedUser() async {
    final user = await SecureStorage.read(key: _cachedUser);
    if (user != null) {
      return TestUserEntity.fromJson(jsonDecode(user.toString()));
    } else {
      throw DooadexException.unstableNetwork();
    }
  }
}
