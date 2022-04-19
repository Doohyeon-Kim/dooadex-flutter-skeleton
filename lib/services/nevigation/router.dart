import 'package:dooadex_flutter_skeleton/constants/route_names.dart';
import 'package:dooadex_flutter_skeleton/screens/home_screen.dart';
import 'package:dooadex_flutter_skeleton/screens/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../screens/button_samples_screen.dart';

class DooadexRouter {
  DooadexRouter._();

  static final router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
          name: "root",
          path: '/',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const RootScreen(),
            );
          }),
      GoRoute(
          name: RouteName.home,
          path: '/home',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const HomeScreen(),
            );
          }),
      GoRoute(
        name: RouteName.buttonSamples,
        path: '/home/button-samples',
        pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: const ButtonSamplesScreen(),
          );
        },
      ),
    ],
  );
}
