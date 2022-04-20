import 'package:dooadex_flutter_skeleton/constants/route_contants.dart';
import 'package:dooadex_flutter_skeleton/screens/button_samples_screen.dart';
import 'package:dooadex_flutter_skeleton/screens/home_screen.dart';
import 'package:dooadex_flutter_skeleton/screens/root_screen.dart';
import 'package:dooadex_flutter_skeleton/services/nevigation/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'presentation/view_models/kakao_user_view_model.dart';
import 'presentation/view_models/user_view_model.dart';
import 'services/kakao_sdk/kakao_sdk.dart';

void main() {
  KakaoSdkManager.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserViewModel>(
            create: (BuildContext context) => UserViewModel()),
        ChangeNotifierProvider<KakaoUserViewModel>(
            create: (context) => KakaoUserViewModel()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: DooadexRouter.router.routeInformationParser,
        routerDelegate: DooadexRouter.router.routerDelegate,

        // routeInformationParser: _router.routeInformationParser,
        // routerDelegate: _router.routerDelegate,
      ),
    );
  }
}
