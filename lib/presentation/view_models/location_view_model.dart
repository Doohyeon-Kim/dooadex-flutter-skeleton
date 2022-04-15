import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

import '../../services/native_api/location.dart';

class LocationViewModel extends ChangeNotifier {
  Position? position;

  void getPosition() async {
    position = await LocationService.determinePosition();
    notifyListeners();
  }
}
