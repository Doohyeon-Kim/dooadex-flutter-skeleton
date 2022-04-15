import 'package:dooadex_flutter_skeleton/constants/named_route.dart';
import 'package:dooadex_flutter_skeleton/screens/button_samples_screen.dart';
import 'package:dooadex_flutter_skeleton/screens/home_screen.dart';
import 'package:dooadex_flutter_skeleton/screens/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'presentation/view_models/kakao_user_view_model.dart';
import 'presentation/view_models/user_view_model.dart';
import 'services/kakao_sdk/kakao_sdk.dart';

void main() {
  KakaoSdkManager.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const RootScreen(),
      ),
      GoRoute(
        name: "home",
        path: RoutePath.home,
        builder: (BuildContext context, GoRouterState state) =>
            const HomeScreen(),
      ),
      GoRoute(
        name: "button_samples",
        path: RoutePath.buttonSamples,
        builder: (BuildContext context, GoRouterState state) =>
        const ButtonSamplesScreen(),
      ),
    ],
  );

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
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      ),
    );
  }
}
