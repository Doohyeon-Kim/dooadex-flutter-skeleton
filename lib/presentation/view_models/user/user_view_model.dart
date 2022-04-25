import 'package:dooadex_flutter_skeleton/domain/models/user.dart';
import 'package:dooadex_flutter_skeleton/domain/use_cases/user_use_cases/get_user_info.dart';
import 'package:flutter/cupertino.dart';


class UserViewModel extends ChangeNotifier {
  User? user;

  Future<void> getUser({required String name}) async {
    final GetUserInfo _getUserInfo = GetUserInfo();
    user = await _getUserInfo.call(name: name);
    notifyListeners();
  }
}
