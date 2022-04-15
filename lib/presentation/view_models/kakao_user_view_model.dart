import 'package:flutter/cupertino.dart';

import '../../domain/models/kakao_user.dart';
import '../../domain/use_cases/kakao_use_cases/kakao_login.dart';

class KakaoUserViewModel extends ChangeNotifier {
  Future<void> kakaoLogin() async {
    final KakaoLogin _kakaoLogin = KakaoLogin();
    await _kakaoLogin.call();
    notifyListeners();
  }

  String? getToken() {
    return KakaoUser.token;
  }
}
