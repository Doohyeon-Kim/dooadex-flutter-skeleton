import 'package:dooadex_flutter_skeleton/constants/route_contants.dart';
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
          name: DooadexRoute.path.root,
          path: DooadexRoute.name.root,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const RootScreen(),
            );
          }),
      GoRoute(
          path: DooadexRoute.path.home,
          name: DooadexRoute.name.home,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const HomeScreen(),
            );
          }),
      GoRoute(
        path: DooadexRoute.path.buttonSamples,
        name: DooadexRoute.name.buttonSamples,
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
