import 'package:dooadex_flutter_skeleton/services/kakao_sdk/kakao_sdk_manager.dart';

import '../../models/kakao_user.dart';

class KakaoLogin {
  Future<void> call() async {
    KakaoSdkManager.signIn();
    final user = await KakaoSdkManager.getUser();
    KakaoUser.token = await KakaoSdkManager.getToken();
    KakaoUser.uid = user?.id;
    KakaoUser.email = user?.kakaoAccount?.email;
    KakaoUser.nickName = user?.kakaoAccount?.profile?.nickname;
  }
}
