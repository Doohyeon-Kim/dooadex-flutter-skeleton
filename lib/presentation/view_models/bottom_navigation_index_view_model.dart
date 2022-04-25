import 'package:flutter/foundation.dart';

class BottomNavigationIndexViewModel extends ChangeNotifier {
  int selectedIndex = 0;

  void onItemTapped({required int index}) {
    selectedIndex = index;
    notifyListeners();
  }
}
