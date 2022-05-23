import 'package:dooadex_flutter_skeleton/components/navigation_bars/top_navigation_bar.dart';
import 'package:dooadex_flutter_skeleton/constants/dooadex_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../components/buttons/dooadex_button.dart';
import '../../../configs/palette.dart';

class TextFieldSamplesScreen extends StatelessWidget {
  const TextFieldSamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopNavigationBar.title(
            title: "TextField Samples",
            context: context,
            style: DooadexTypo.headline,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DooadexButton.elevated(
                  onPressed: () {
                    GoRouter.of(context).pushNamed(DooadexRoute.name.underlineTextFieldSamples);
                  },
                  color: DooadexColor.blue,
                  child: const Text("Underline Text Field"),
                ),
                DooadexButton.elevated(
                  onPressed: () {
                    GoRouter.of(context).pushNamed(DooadexRoute.name.outlineTextFieldSamples);
                  },
                  color: DooadexColor.blue,
                  child: const Text("Outline Text Field"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
