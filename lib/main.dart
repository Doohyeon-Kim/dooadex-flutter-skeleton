import 'package:dooadex_palette/dooadex_palette.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/view_models/user/user_view_models.dart';
import 'services/kakao_sdk/kakao_sdk_manager.dart';
import 'services/navigation/router.dart';

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
        routeInformationProvider: DooadexRouter.router.routeInformationProvider,
        routeInformationParser: DooadexRouter.router.routeInformationParser,
        routerDelegate: DooadexRouter.router.routerDelegate,
        theme: ThemeData(
          primarySwatch: MaterialColor(
              DooadexColor.primaryMaterialColor.colorHex,
              DooadexColor.primaryMaterialColor.swatch),
        ),
      ),
    );
  }
}
