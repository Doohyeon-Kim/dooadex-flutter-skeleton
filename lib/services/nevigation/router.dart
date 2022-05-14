import 'package:dooadex_flutter_skeleton/constants/dooadex_constants.dart';
import 'package:dooadex_flutter_skeleton/screens/dooadex_screens.dart';
import 'package:dooadex_flutter_skeleton/screens/io_samples_screens/text_field_samples/outline_text_field_samples_screen.dart';
import 'package:dooadex_flutter_skeleton/screens/io_samples_screens/text_field_samples/underline_text_field_samples_screen.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        },
      ),
      GoRoute(
        path: DooadexRoute.path.home,
        name: DooadexRoute.name.home,
        pageBuilder: (context, state) {
          return NoTransitionPage(
            key: state.pageKey,
            child: const HomeScreen(),
          );
        },
        routes: [
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
          GoRoute(
            path: DooadexRoute.path.textFieldSamples,
            name: DooadexRoute.name.textFieldSamples,
            pageBuilder: (context, state) {
              return MaterialPage(
                key: state.pageKey,
                child: const TextFieldSamplesScreen(),
              );
            },
            routes: [
              GoRoute(
                path: DooadexRoute.path.underlineTextFieldSamples,
                name: DooadexRoute.name.underlineTextFieldSamples,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    key: state.pageKey,
                    child: const UnderlineTextFieldSamplesScreen(),
                  );
                },
              ),  GoRoute(
                path: DooadexRoute.path.outlineTextFieldSamples,
                name: DooadexRoute.name.outlineTextFieldSamples,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    key: state.pageKey,
                    child: const OutlineTextFieldSamplesScreen(),
                  );
                },
              ),
            ]
          ),
        ],
      ),
    ],
  );
}
