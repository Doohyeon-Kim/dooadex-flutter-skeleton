import 'reg_exp_pattern.dart';

class Validator {
  static late RegExp regExp;

  Validator._();

  // static bool isValid({required bool validator}) {
  //   return validator;
  // }

  static validatePassword() {}

  static validateNickname({required String nickname}) {
    regExp = RegExp(RegExpPattern.nickname);
    return regExp.hasMatch(nickname) == true ? true : false;
  }

  static bool validatePhoneNumber({required String phoneNumber}) {
    regExp = RegExp(RegExpPattern.phoneNumber);
    return regExp.hasMatch(phoneNumber) == true ? true : false;
  }

  static bool validateMoreThan14({required DateTime birthDate}) {
    return DateTime.now().difference(birthDate).inDays > 5112 == true ? true : false;
  }

  static bool validateBirthDate({required DateTime birthDate}) {
    return DateTime.now().isAfter(birthDate) == false ? false : true;
  }

  static bool validateGenderNumber({required String genderNumber}) {
    regExp = RegExp(RegExpPattern.genderNumber);
    return regExp.hasMatch(genderNumber) == true ? true : false;
  }
}
