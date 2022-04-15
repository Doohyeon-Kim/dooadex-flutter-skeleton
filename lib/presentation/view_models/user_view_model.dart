import 'package:flutter/cupertino.dart';

import '../../domain/models/user.dart';
import '../../domain/use_cases/user_use_cases/get_user_info.dart';

class UserViewModel extends ChangeNotifier {
  User? user;

  Future<void> getUser({required String name}) async {
    final GetUserInfo _getUserInfo = GetUserInfo();
    user = await _getUserInfo.call(name: name);
    notifyListeners();
  }
}
