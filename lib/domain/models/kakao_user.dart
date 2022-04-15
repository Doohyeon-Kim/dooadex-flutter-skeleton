class KakaoUser {
  KakaoUser._internal();

  static final KakaoUser _instance = KakaoUser._internal();

  factory KakaoUser() {
    return _instance;
  }

  static int? uid;
  static String? nickName;
  static String? email;
  static String? token;
}
