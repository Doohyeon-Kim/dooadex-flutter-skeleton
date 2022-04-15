import 'package:connectivity_plus/connectivity_plus.dart';

import '../../utilities/logger.dart';

class ConnectivityManager {
  ConnectivityManager._();

  static Future<bool> networkConnected() async {
    final ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());
    logger.d("Connectivity: ${connectivityResult.name}");
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.ethernet) {
      return true;
    } else {
      return false;
    }
  }
}
