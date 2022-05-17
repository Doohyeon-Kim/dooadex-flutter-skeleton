class RegExpPattern {
  RegExpPattern._();

  static String phoneNumber = r"(\d{3})(\d{3,4})(\d{4})";
  static String birthDate = r"/^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$";
  static String birthDateHyphen = r"^(19[0-9][0-9]|20\d{2})-(0[0-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$";
  static String genderNumber = r"^[1-4]$";
}
