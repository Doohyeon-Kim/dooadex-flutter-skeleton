import 'package:flutter/foundation.dart';

class BottomNavigationViewModel extends ChangeNotifier {
  int selectedIndex = 0;

  void onItemTapped({required int index}) {
    selectedIndex = index;
    notifyListeners();
  }
}
