class RegExpPattern {
  RegExpPattern._();

  static String nickname = r"([a-zA-Z0-9ㄱ-ㅎ|ㅏ-ㅣ|가-힣]).{1,10}$";
  static String phoneNumber = r"(010)-(\d{4})-(\d{4})$";
  static String birthDate = r"/^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$";
  static String birthDateHyphen = r"^(19[0-9][0-9]|20\d{2})-(0[0-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$";
  static String genderNumber = r"^[1-4]$";
}
