import 'package:flutter/foundation.dart';

abstract class BaseViewModel extends ChangeNotifier {
  void rebuild() {
    notifyListeners();
  }
}
