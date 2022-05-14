import 'package:dooadex_flutter_skeleton/configs/app_config.dart';
import 'package:dooadex_flutter_skeleton/constants/app_constants.dart';
import 'package:dooadex_flutter_skeleton/presentation/views/splash_view.dart';
import 'package:dooadex_flutter_skeleton/services/native_api/local_notification.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants/route_constants.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  void initState() {
    super.initState();
    appInitialize();
  }

  @override
  Widget build(BuildContext context) {
    return const SplashView();
  }

  appInitialize() async {
    maxWidth =
        MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
    maxHeight =
        MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;

    unitWidth4 = maxWidth / 93.75;
    unitHeight4 = maxHeight / 203;

    unitWidth2 = unitWidth4 / 2;
    unitWidth8 = unitWidth4 * 2;
    unitWidth12 = unitWidth4 * 3;
    unitWidth16 = unitWidth4 * 4;
    unitWidth20 = unitWidth4 * 5;
    unitWidth24 = unitWidth4 * 6;
    unitWidth28 = unitWidth4 * 7;
    unitWidth32 = unitWidth4 * 8;
    unitWidth36 = unitWidth4 * 9;
    unitWidth40 = unitWidth4 * 10;
    unitWidth44 = unitWidth4 * 11;
    unitWidth48 = unitWidth4 * 12;
    unitWidth52 = unitWidth4 * 13;
    unitWidth56 = unitWidth4 * 14;
    unitWidth60 = unitWidth4 * 15;

    unitHeight2 = unitHeight4 / 2;
    unitHeight8 = unitHeight4 * 2;
    unitHeight12 = unitHeight4 * 3;
    unitHeight16 = unitHeight4 * 4;
    unitHeight20 = unitHeight4 * 5;
    unitHeight24 = unitHeight4 * 6;
    unitHeight28 = unitHeight4 * 7;
    unitHeight32 = unitHeight4 * 8;
    unitHeight36 = unitHeight4 * 9;
    unitHeight40 = unitHeight4 * 10;
    unitHeight44 = unitHeight4 * 11;
    unitHeight48 = unitHeight4 * 12;
    unitHeight52 = unitHeight4 * 13;
    unitHeight56 = unitHeight4 * 14;
    unitHeight60 = unitHeight4 * 15;

    topSafeAreaPadding =
        MediaQueryData.fromWindow(WidgetsBinding.instance.window).padding.top;
    bottomSafeAreaPadding =
        MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .padding
            .bottom;
    safeAreaPadding = topSafeAreaPadding + bottomSafeAreaPadding;

    topNavigationBarHeight = unitHeight60;

    LocalNotification.initLocalNotificationPlugin();

    // await sharedPreferenceService.initSharedPreference();

    // if (SignIn().checkUserSignedIn()) {
    // } else {
    //   logger.i('token is null');
    // }

    if (splashHolder) {
      await Future.delayed(splashHolderDuration);
    }

    GoRouter.of(context).goNamed(DooadexRoute.name.home);
  }
}
