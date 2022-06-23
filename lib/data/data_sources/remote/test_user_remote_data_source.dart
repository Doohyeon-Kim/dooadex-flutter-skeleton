
import 'package:dooadex_constants/dooadex_constants.dart';
import 'package:dooadex_flutter_skeleton/data/entities/test_user_entity.dart';
import 'package:dooadex_http/dooadex_http.dart';

class TestUserRemoteDataSource{
  Future<TestUserEntity> getUser({required String name}) async {
    final Map<String, dynamic> data = await DooadexHttpClient.external(uriAddress: 'https://api.agify.io/?name=$name', method: HttpConstant.method.get);

    return TestUserEntity.fromJson(data);
  }

}