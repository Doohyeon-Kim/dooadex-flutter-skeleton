
import 'package:dooadex_flutter_skeleton/data/entities/user_entity.dart';

import '../../../services/network/http/http_client.dart';
class UserRemoteDataSource{

  Future<UserEntity> getUser({required String name}) async {
    final Map<String, dynamic> data = await HttpClient.testGet(urlAddress: 'https://api.agify.io/?name=$name');

    return UserEntity.fromJson(data);
  }
}