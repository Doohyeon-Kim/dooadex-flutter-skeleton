import 'package:dooadex_flutter_skeleton/constants/dooadex_constants.dart';
import 'package:dooadex_flutter_skeleton/data/entities/sign_up_entity.dart';
import 'package:dooadex_http/dooadex_http.dart';

import '../../entities/user_entity.dart';

class UserRemoteDataSource {
  Future<UserEntity> createUser({required SignUpEntity signUpEntity}) async {
    final Map<String, dynamic> data = await DooadexHttpClient.post(
        path: ApiPath.signUp, body: signUpEntity.toJson());

    return UserEntity.fromJson(data);
  }
}
