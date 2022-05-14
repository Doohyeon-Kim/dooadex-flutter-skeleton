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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: DooadexButton.icon(
          onPressed: () => GoRouter.of(context).pop(),
          splashRadius: 20,
          color: DooadexColor.blue,
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DooadexButton.elevated(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(DooadexRoute.name.underlineTextFieldSamples);
              },
              color: DooadexColor.blue,
              child: const Text("Underline Text Field"),
            ),
            DooadexButton.elevated(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(DooadexRoute.name.outlineTextFieldSamples);
              },
              color: DooadexColor.blue,
              child: const Text("Outline Text Field"),
            ),
          ],
        ),
      ),
    );
  }
}
