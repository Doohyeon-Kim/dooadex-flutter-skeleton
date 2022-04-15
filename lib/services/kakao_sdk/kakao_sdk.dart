import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

import '../../constants/keys.dart';
import '../../utilities/logger.dart';

class KakaoSdkManager {
  KakaoSdkManager._();

  static init() {
    KakaoSdk.init(nativeAppKey: nativeAppKey);
  }

  static login() async {
    if (await isKakaoTalkInstalled()) {
      try {
        await UserApi.instance.loginWithKakaoTalk();
        logger.d('카카오톡으로 로그인 성공');
      } catch (error) {
        logger.e('카카오톡으로 로그인 실패 $error');

        // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
        // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
        if (error is PlatformException && error.code == 'CANCELED') {
          return;
        }
        // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
        try {
          await UserApi.instance.loginWithKakaoAccount();
          logger.d('카카오계정으로 로그인 성공');
        } catch (error) {
          logger.e('카카오계정으로 로그인 실패 $error');
        }
      }
    } else {
      try {
        await UserApi.instance.loginWithKakaoAccount();
        logger.d('카카오계정으로 로그인 성공');
      } catch (error) {
        logger.e('카카오계정으로 로그인 실패 $error');
      }
    }
  }

  static Future<String?> getToken() async {
    try {
      OAuthToken? token = await TokenManagerProvider.instance.manager.getToken();
      return token!.accessToken;
    } catch (error) {
      logger.e(error);
      return null;
    }
  }

  static Future<int?> getTokenInfo() async {
    try {
      AccessTokenInfo tokenInfo = await UserApi.instance.accessTokenInfo();
      logger.d('토큰 정보 보기 성공'
          '\n회원정보: ${tokenInfo.id}'
          '\n만료시간: ${tokenInfo.expiresIn} 초');
      return tokenInfo.id;
    } catch (error) {
      logger.e('토큰 정보 보기 실패 $error');
      return null;
    }
  }

  static Future<void> unlink() async {
    try {
      await UserApi.instance.unlink();
      logger.d('연결 끊기 성공, SDK에서 토큰 삭제');
    } catch (error) {
      logger.e('연결 끊기 실패 $error');
    }
  }

  static Future<User?> getUser() async {
    try {
      User user = await UserApi.instance.me();
      logger.d('사용자 정보 요청 성공'
          '\n회원번호: ${user.id}'
          '\n닉네임: ${user.kakaoAccount?.profile?.nickname}'
          '\n이메일: ${user.kakaoAccount?.email}');
      return user;
    } catch (error) {
      logger.e('사용자 정보 요청 실패 $error');
      return null;
    }
  }
}
