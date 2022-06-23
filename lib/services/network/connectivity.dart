import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dooadex_logger/dooadex_logger.dart';


class ConnectivityManager {
  ConnectivityManager._();

  static Future<bool> networkConnected() async {
    final ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());
    DooadexLogger("Connectivity: ${connectivityResult.name}");
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.ethernet) {
      return true;
    } else {
      return false;
    }
  }
}
